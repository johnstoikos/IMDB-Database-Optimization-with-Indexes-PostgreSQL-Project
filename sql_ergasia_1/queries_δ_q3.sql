-- Q3 : Μέση βαθμολογία παραγωγών ανά συντελεστή/ηθοποιο

-- 1
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Brad Pitt'
GROUP BY n.primaryname;

-- 2
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Johnny Depp'
GROUP BY n.primaryname;

-- 3
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Leonardo DiCaprio'
GROUP BY n.primaryname;

-- 4
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Angelina Jolie'
GROUP BY n.primaryname;

-- 5
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Tom Hanks'
GROUP BY n.primaryname;

-- 6
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Meryl Streep'
GROUP BY n.primaryname;

-- 7
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Morgan Freeman'
GROUP BY n.primaryname;

-- 8
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Keanu Reeves'
GROUP BY n.primaryname;

-- 9
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Natalie Portman'
GROUP BY n.primaryname;

-- 10
SELECT n.primaryname, AVG(r.averagerating) AS avg_rating
FROM name_basics n
JOIN title_ratings r
  ON r.tconst = ANY (regexp_split_to_array(coalesce(n.knownfortitles,''), ',\s*'))
WHERE n.primaryname = 'Robert De Niro'
GROUP BY n.primaryname;
