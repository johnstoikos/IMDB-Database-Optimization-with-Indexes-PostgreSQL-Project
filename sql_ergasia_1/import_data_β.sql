-- Φόρτωση δεδομένων στον πίνακα title_basics
\copy title_basics (tconst, titletype, primarytitle, originaltitle, isadult, startyear, endyear, runtimeminutes, genres)
FROM 'C:/Users/Κατερίνα/Downloads/Dataset_imdb/title_basics.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' NULL '\N' ESCAPE '"';

-- Φόρτωση δεδομένων στον πίνακα name_basics
\copy name_basics (nconst, primaryname, birthyear, deathyear, primaryprofession, knownfortitles)
FROM 'C:/Users/Κατερίνα/Downloads/Dataset_imdb/name_basics.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' NULL '\N' ESCAPE '"';

-- Φόρτωση δεδομένων στον πίνακα title_ratings
\copy title_ratings (tconst, averagerating, numvotes)
FROM 'C:/Users/Κατερίνα/Downloads/Dataset_imdb/title_ratings.csv'
DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' NULL '\N' ESCAPE '"';
