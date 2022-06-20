SELECT title, year_production 
	FROM Albums
	WHERE year_production = 2018;

SELECT title, duration
	FROM Tracks
	ORDER BY duration DESC
	LIMIT 1;

SELECT title
	FROM Tracks
	WHERE duration >= '3:30';

SELECT title
	FROM Collection
	WHERE year_production BETWEEN 2018 AND 2020;

SELECT name
	FROM Singers
	WHERE name iLIKE ('% %');

SELECT title
	FROM Tracks
	WHERE title LIKE '%my%' OR title LIKE '%мой%';

SELECT title, COUNT(*)
	FROM genre g
	JOIN genre_singers gs ON g.id_genre = gs.id_genre
	GROUP BY g.id_genre;

SELECT COUNT(t.id_track) 
	FROM tracks t 	
	JOIN albums a ON t.id_album = a.id_album 
	WHERE year_production BETWEEN 2019 AND 2020;

SELECT a.title, AVG(duration)  
	FROM albums a
	JOIN tracks t ON a.id_album = t.id_album
	GROUP BY a.id_album;

SELECT DISTINCT name
	FROM singers s
	JOIN albums_and_singers aas ON s.id = aas.id_sing
	JOIN albums a ON aas.id_album = a.id_album
	WHERE s.name NOT IN (SELECT DISTINCT name
	FROM singers s
	JOIN albums_and_singers aas ON s.id = aas.id_sing
	JOIN albums a ON aas.id_album = a.id_album
	WHERE a.year_production=2020);

SELECT c.title
	FROM collection c
	JOIN collection_and_tracks cat ON c.id_collection = cat.id_collection
	JOIN tracks t ON cat.id_track = t.id_track
	JOIN albums_and_singers aas ON t.id_album = aas.id_album
	JOIN singers s ON aas.id_sing = s.id
	WHERE s.name = 'Roy Jones';

SELECT a.title
	FROM albums a
	JOIN albums_and_singers aas ON a.id_album = aas.id_album
	JOIN genre_singers gs ON aas.id_sing = gs.id_singer
	JOIN genre g ON gs.id_genre = g.id_genre
	GROUP BY a.id_album
	HAVING COUNT(g.id_genre) > 1;
   	
SELECT title
	FROM tracks t
	LEFT JOIN collection_and_tracks cat ON t.id_track = cat.id_track
	WHERE cat.id_track IS NULL;

SELECT name 
	FROM singers s 
	JOIN albums_and_singers aas ON s.id = aas.id_sing
	JOIN tracks t ON aas.id_album = t.id_album
	WHERE duration = (SELECT MIN(duration) FROM tracks);


SELECT a.title
	FROM albums a
	JOIN tracks t ON a.id_album = t.id_album
	GROUP BY t.id_album, a.title
	HAVING COUNT(id_track) = (SELECT COUNT(id_track)
	FROM albums a
	JOIN tracks t ON a.id_album = t.id_album
	GROUP BY t.id_album, t.title
	ORDER BY COUNT(id_track)
    LIMIT 1);