-- Query 1: Ποιοι συντελεστές συμμετέχουν σε παραγωγή Χ
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0111161' = ANY(string_to_array(n.knownfortitles, ','));

SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0068646' = ANY(string_to_array(n.knownfortitles, ','));

SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0468569' = ANY(string_to_array(n.knownfortitles, ','));

-- 4
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0133093' = ANY(string_to_array(n.knownfortitles, ','));

-- 5
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0110912' = ANY(string_to_array(n.knownfortitles, ','));

-- 6
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0109830' = ANY(string_to_array(n.knownfortitles, ','));

-- 7
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0137523' = ANY(string_to_array(n.knownfortitles, ','));

-- 8
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0120815' = ANY(string_to_array(n.knownfortitles, ','));

-- 9
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0167260' = ANY(string_to_array(n.knownfortitles, ','));

-- 10
SELECT n.primaryname, n.primaryprofession
FROM name_basics n
WHERE 'tt0114369' = ANY(string_to_array(n.knownfortitles, ','));







--Query 2: σε ποια κατηγορία/είδη ανήκει μια παραγωγή

--1
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0111161';

--2
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0068646';

--3
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0468569';

--4
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0133093';

--5
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0110912';

--6
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0109830';

--7
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0137523';

--8
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0120815';

--9
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0167260';

--10
SELECT t.primarytitle, t.titletype, t.genres
FROM title_basics t
WHERE t.tconst = 'tt0114369';




--Query 3 : Εκτέλεση του ίδιου query για 10 διαφορετικούς ηθοποιούς

--1
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Brad Pitt'
GROUP BY n.primaryname;

--2
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Johnny Depp'
GROUP BY n.primaryname;

--3
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Leonardo DiCaprio'
GROUP BY n.primaryname;

--4
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Angelina Jolie'
GROUP BY n.primaryname;
--5
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Tom Hanks'
GROUP BY n.primaryname;

--6
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Meryl Streep'
GROUP BY n.primaryname;

--7
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Morgan Freeman'
GROUP BY n.primaryname;

--8
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Keanu Reeves'
GROUP BY n.primaryname;

--9
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Natalie Portman'
GROUP BY n.primaryname;

--10
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_basics t 
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
JOIN title_ratings r 
  ON t.tconst = r.tconst
WHERE n.primaryname = 'Robert De Niro'
GROUP BY n.primaryname;


SELECT nconst, primaryname, primaryprofession
FROM name_basics
WHERE primaryprofession LIKE '%actor%'
  AND (
       primaryprofession LIKE '%director%'
    OR primaryprofession LIKE '%producer%'
    OR primaryprofession LIKE '%writer%'
  )
LIMIT 10;


--Query 4 : Σε ποιες παραγωγές ένας ηθοποιός είχε και άλλο ρόλο

--1
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t
  ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020404'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

-- 2
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020405'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--3
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020411'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--4
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020428'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--5
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020431'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--6
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020434'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--7
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020452'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--8
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020474'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--9
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020521'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');

--10
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON n.knownfortitles LIKE '%' || t.tconst || '%'
WHERE n.nconst = 'nm0020530'
  AND n.primaryprofession ILIKE '%actor%'
  AND (n.primaryprofession ILIKE '%director%' OR n.primaryprofession ILIKE '%producer%' OR n.primaryprofession ILIKE '%writer%');




