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
