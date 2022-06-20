INSERT INTO Singers(name) 
VALUES
	('Roy Jones'),
	('Jack Boswell'),
	('Ronny Seedorf'),
	('Ted Galacher'),
	('Nick Rosentahl'),
	('Paul Oakenfold'),
	('Ferry Corsten'),
	('David Guetta'),
	('Kimi Raykonen');

INSERT INTO Genre(title)
VALUES
	('Rock'),
	('Pop'),
	('Country'),
	('Jazz'),
	('Rap');

INSERT INTO Albums(title, year_production)
VALUES
	('Venom', 1999),
	('Zorro', 2005),
	('Unity', 2009),
	('Russian beast', 2013),
	('Duckling', 2020),
	('Meteora', 2019),
	('Hero', 2010),
	('The Star', 2003),
	('Racer', 2014),
	('Sleapstream', 2020);

INSERT INTO Tracks(id_album, title, duration)
VALUES
	(3, 'In forest', '3:25'),
	(8, 'Love', '3:41'),
	(6, 'Pig', '3:11'),
	(5, 'Bread', '3:33'),
	(1, 'Lonely', '3:51'),
	(7, 'Infest', '3:07'),
	(2, 'Session', '3:22'),
	(6, 'Numb', '4:02'),
	(7, 'Neo', '3:17'),
	(1, 'Mystery', '3:39'),
	(5, 'Shadow power', '3:49'),
	(4, 'Green hill', '3:19'),
	(8, 'Legendary', '3:30'),
	(2, 'Robo', '3:03'),
	(7, 'Total War', '2:49'),
	(9, 'Speedway', '3:33'),
	(10, 'Nitro', '3:14');

INSERT INTO Collection(title, year_production)
VALUES
	('The Best', 2020),
	('Emotion', 2021),
	('Winter killer', 2019),
	('Nature', 2018),
	('Armageddon', 2022),
	('Firs day', 2020),
	('Luxury', 2017),
	('For you', 2019);

INSERT INTO Genre_singers
VALUES
	(3, 1),
	(5, 2),
	(4, 3),
	(2, 4),
	(5, 5),
	(3, 6),
	(1, 7),
	(5, 8),
	(1, 9);

INSERT INTO Albums_and_singers
VALUES
	(1, 8),
	(2, 7),
	(3, 3),
	(4, 3),
	(5, 1),
	(6, 2),
	(7, 5),
	(8, 6),
	(9, 9),
	(9, 10);

INSERT INTO Collection_and_tracks
VALUES
	(1, 10),
	(2, 9),
	(3, 7),
	(4, 2),
	(5, 11),
	(6, 4),
	(7, 5),
	(8, 14);