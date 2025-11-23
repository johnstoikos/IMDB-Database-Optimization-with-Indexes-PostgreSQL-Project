-- 1) Ποιοι συντελεστές/ηθοποιοί συμμετέχουν σε μια παραγωγή 
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0111161' = ANY(string_to_array(n.knownfortitles, ','))
ORDER BY n.primaryname;

-- 2) Κατηγορία (titletype) και είδος (genres) μιας παραγωγής 
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0111161'
ORDER BY t.primarytitle;

-- 3) Μέση βαθμολογία των παραγωγών στις οποίες συμμετείχε συγκεκριμένος συντελεστής
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Brad Pitt'
GROUP BY n.primaryname;

-- 4) Σε ποιες παραγωγές ένας ηθοποιός είχε και άλλο ρόλο 
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020405'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;


-- helper queries 
--  10 τίτλοι
SELECT tconst, primarytitle, titletype, genres
FROM title_basics
LIMIT 10;

--  10 άτομα
SELECT nconst, primaryname, primaryprofession, knownfortitles
FROM name_basics
LIMIT 10;

--  10 βαθμολογίες
SELECT tconst, averagerating, numvotes
FROM title_ratings
LIMIT 10;
