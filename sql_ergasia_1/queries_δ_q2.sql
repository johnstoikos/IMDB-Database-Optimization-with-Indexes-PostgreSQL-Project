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
