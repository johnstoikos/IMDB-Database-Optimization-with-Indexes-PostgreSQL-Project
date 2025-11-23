-- Πίνακας με τις παραγωγές
CREATE TABLE IF NOT EXISTS title_basics (
    tconst VARCHAR(20) PRIMARY KEY,
    titletype VARCHAR(20),
    primarytitle TEXT,
    originaltitle TEXT,
    isadult BOOLEAN,
    startyear INT,
    endyear INT,
    runtimeminutes DOUBLE PRECISION,
    genres TEXT
);

-- Πίνακας με τους συντελεστές/ηθοποιούς
CREATE TABLE IF NOT EXISTS name_basics (
    nconst VARCHAR(20) PRIMARY KEY,
    primaryname TEXT,
    birthyear INT,
    deathyear INT,
    primaryprofession TEXT,
    knownfortitles TEXT
);

-- Πίνακας με τις βαθμολογίες
CREATE TABLE IF NOT EXISTS title_ratings (
    tconst VARCHAR(20) PRIMARY KEY,
    averagerating DOUBLE PRECISION,
    numvotes INT,
    FOREIGN KEY (tconst) REFERENCES title_basics(tconst)
);

