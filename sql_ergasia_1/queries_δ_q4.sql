-- Q4 : ηθοποιός και άλλος ρόλος

-- 1
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t
  ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020404'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 2
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020405'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 3
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020411'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 4
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020428'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 5
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020431'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 6
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020434'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 7
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020452'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 8
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020474'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 9
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020521'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;

-- 10
SELECT n.primaryname, t.primarytitle, n.primaryprofession
FROM name_basics n
JOIN title_basics t ON t.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.nconst = 'nm0020530'
  AND ( lower(n.primaryprofession) LIKE 'actor%' OR lower(n.primaryprofession) LIKE 'actress%' )
  AND ( lower(n.primaryprofession) LIKE 'director%' OR lower(n.primaryprofession) LIKE 'producer%' OR lower(n.primaryprofession) LIKE 'writer%'
     OR lower(n.primaryprofession) LIKE '%,director%' OR lower(n.primaryprofession) LIKE '%,producer%' OR lower(n.primaryprofession) LIKE '%,writer%' )
ORDER BY t.primarytitle;
