-- Query first, comment is below it:

SELECT name FROM songs;

--output a table with a single column for the name of each song.

SELECT name FROM songs ORDER BY tempo;

-- list the names of all songs in increasing order of tempo.

SELECT name FROM songs ORDER BY duration_ms DESC LIMIT 5;

-- list the names of the top 5 longest songs, in descending order of length

SELECT name FROM songs WHERE energy > 0.75 AND valence > 0.75 AND danceability > 0.75;

--lists the names of any songs that have danceability, energy, and valence greater than 0.75.

SELECT AVG(energy) FROM songs;

-- returns the average energy of all the songs

 SELECT name FROM songs WHERE artist_id IN (SELECT id FROM artists WHERE name LIKE "Post Malone");

 -- lists the names of songs that are by Post Malone

SELECT AVG(energy) FROM songs WHERE artist_id IN (SELECT id FROM artists WHERE name LIKE "Drake");

--returns the average energy of songs that are by Drake.

SELECT name FROM songs WHERE name LIKE "%feat.%";

--  lists the names of the songs that feature other artists.
