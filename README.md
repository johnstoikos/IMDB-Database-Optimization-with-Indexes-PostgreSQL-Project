# IMDB Database Optimization with Indexes – PostgreSQL Project

## Overview
This project was developed as part of the **Database Management Systems** course and focuses on analyzing and optimizing query performance on an **IMDB dataset** implemented in **PostgreSQL**.  
The main goal was to compare **query execution times** before and after applying **indexes** and to evaluate how indexes influence database efficiency.

---

## Authors
- **Anargyrou Lamprou Aikaterini** 
- **Stoikos Ioannis Panagiotis** 

*Course:* Database Management Systems  
*Assignment 1*  

---

## Database Design
Three main tables were created based on the IMDB dataset:

| Table | Description |
|--------|--------------|
| **name_basics** | Contains basic information about people in the database (`nconst`, `primaryname`, `birthyear`, `primaryprofession`, `knownfortitles`). |
| **title_basics** | Contains production details (`tconst`, `primarytitle`, `titletype`, `startyear`, `genres`). |
| **title_ratings** | Stores ratings and vote counts (`tconst`, `averagerating`, `numvotes`). |

Two database versions were tested:
1. **Without indexes** (raw tables)
2. **With indexes** (optimized version)

---

## Data Import
Data was imported from **CSV files** provided by the instructor using:
- **pgAdmin Import/Export tool**, with:
  - `delimiter = ,`
  - `encoding = UTF-8`
  - `NULL = \N`
- Alternatively, the `\copy` command in PostgreSQL CLI was used.

Verification of successful data load was done via:
```sql
SELECT * FROM title_basics LIMIT 10;
