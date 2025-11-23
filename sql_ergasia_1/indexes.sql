-- indexes

-- Q1: 
CREATE INDEX IF NOT EXISTS idx_nb_knownfortitles_arr_gin
  ON name_basics
  USING GIN (string_to_array(knownfortitles, ','))
  WHERE knownfortitles IS NOT NULL;

-- Q3: 

CREATE INDEX idx_name_basics_primaryname_hash
  ON name_basics
  USING HASH (primaryname);

-- Q2: 
CREATE INDEX IF NOT EXISTS idx_title_basics_titletype
  ON title_basics (titletype);

--Q4:

CREATE INDEX IF NOT EXISTS idx_nb_lower_prof_pattern
  ON name_basics (lower(primaryprofession) text_pattern_ops);

DROP INDEX IF EXISTS idx_nb_knownfortitles_arr_gin;
DROP INDEX IF EXISTS idx_name_basics_primaryname_hash;
DROP INDEX IF EXISTS idx_title_basics_titletype;
DROP INDEX IF EXISTS idx_nb_lower_prof_pattern;
