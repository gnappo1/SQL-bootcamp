-- Write the SQL to return all of the rows in the artists table?
-- SELECT * FROM artists;

-- Write the SQL to select the artist with the name "Black Sabbath"
-- SELECT * FROM artists WHERE artists.name IS "Black Sabbath";

-- Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type textafns
-- CREATE TABLE IF NOT EXISTS fans (
-- 	id INTEGER PRIMARY KEY,
-- 	name TEXT,
--     artist_id  INTEGER,
--     FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE
-- );
-- DROP TABLE fans;

-- Write the SQL to alter the fans table to have a artist_id column type integer?
-- ALTER TABLE fans ADD COLUMN artist_id INTEGER FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE CASCADE;

-- Write the SQL to add yourself as a fan of the Postal Service?
-- ArtistId 174
-- INSERT INTO fans (name, artist_id) VALUES ("Liam", 174);

-- Write the SQL to return fans that are not fans of the black eyed peas.
-- SELECT * FROM fans WHERE artist_id IS NOT (
-- 	SELECT id FROM artists WHERE name IS "black eyed peas"
-- );

-- Write the SQL to display an artists name next to their album title
-- SELECT name as artist_name, title AS album_title FROM artists
-- INNER JOIN albums
-- ON artists.id IS albums.artist_id

-- Write the SQL to display artist name, album name and number of tracks on that album
-- SELECT artists.name as artist_name, title AS album_title, COUNT(tracks.id) AS track_count FROM artists
-- INNER JOIN albums
-- ON artists.id IS albums.artist_id
-- INNER JOIN tracks
-- ON albums.id IS tracks.album_id
-- GROUP BY tracks.album_id

-- Write the SQL to return the name of all of the artists in the 'Pop' Genre
-- SELECT DISTINCT artists.name as artist_name FROM artists
-- INNER JOIN albums
-- ON artists.id IS albums.artist_id
-- INNER JOIN tracks
-- ON albums.id IS tracks.album_id
-- INNER JOIN genres
-- ON tracks.genre_id
-- WHERE tracks.genre_id IS (
-- 	SELECT genres.id FROM genres WHERE genres.name IS "Pop" 
-- )
-- I want to return the names of the artists and their number of rock tracks who play Rock music and have more than 30 tracks in order of the number of rock tracks that they have from greatest to least
-- SELECT artists.name, COUNT(tracks.id) AS rock_track_count FROM artists
-- INNER JOIN albums ON albums.artist_id IS artists.id
-- INNER JOIN tracks ON albums.id IS tracks.album_id
-- WHERE tracks.genre_id IS (
-- 	SELECT id FROM genres WHERE name = "Rock"
-- )
-- GROUP BY artists.id
-- HAVING rock_track_count > 30
-- ORDER BY rock_track_count DESC;

