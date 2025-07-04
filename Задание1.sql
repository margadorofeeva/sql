INSERT INTO album (album_id, name, year_of_release) VALUES
(1, 'The Fame', '2008-05-01'),
(2, 'Eat me, drink me', '2007-06-01'),
(3, 'The Game', '1980-06-01'),
(4, 'Waterloo', '1974-02-13');

INSERT INTO executor (executor_id, pseudonym) VALUES
(1, 'Lady Gaga'),
(2, 'Marilyn Manson'),
(3, 'ABBA'),
(4, 'Freddie Mercury');


INSERT INTO track (track_id, name, duration, album_id) VALUES
(1, 'Play the game', 2, 3),
(2, 'Poker Face', 4, 1),
(3, 'If I was your vampire', 5, 2),
(4, 'Evidence', 5, 2),
(5, 'My honey, honey', 2, 4),
(6, 'Just dance', 4, 1);

INSERT INTO genre (genre_id, name) VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'jazz'),
(4, 'rock and roll');

INSERT INTO collection (collection_id, name, year_of_release) VALUES
(1, 'The Best Pop', '2016-02-01'),
(2, 'The best hits', '2019-03-05'),
(3, 'The Best Rock', '2020-01-16'),
(4, 'Love songs', '2021-10-01');

INSERT INTO executor_genre (executor_id, genre_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 1),
(4, 2),
(4, 4);

INSERT INTO collection_track (track_id, collection_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 4),
(4, 3),
(5, 1),
(5, 2),
(6, 1);


INSERT INTO album_executor_ (album_id, executor_id) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 3);


UPDATE track SET duration = 3.25 WHERE track_id = 1; 
UPDATE track SET duration = 3.95 WHERE track_id = 2; 
UPDATE track SET duration = 5.00 WHERE track_id = 3; 
UPDATE track SET duration = 4.85 WHERE track_id = 4; 
UPDATE track SET duration = 2.40 WHERE track_id = 5; 
UPDATE track SET duration = 4.10 WHERE track_id = 6; 


INSERT INTO Album (name, year_of_release)
VALUES ('Future Sounds', '2019-05-20');


ALTER TABLE track
ALTER COLUMN duration TYPE REAL
USING duration::REAL;


UPDATE track SET duration = 3.25 WHERE track_id = 1; -- Play the game
UPDATE track SET duration = 3.95 WHERE track_id = 2; -- Poker Face
UPDATE track SET duration = 5.00 WHERE track_id = 3; -- If I was your vampire
UPDATE track SET duration = 4.85 WHERE track_id = 4; -- Evidence
UPDATE track SET duration = 2.40 WHERE track_id = 5; -- My honey, honey
UPDATE track SET duration = 4.10 WHERE track_id = 6; -- Just dance



INSERT INTO Album (name, year_of_release)
VALUES ('New Album', '2020-08-15');

INSERT INTO album_executor_ (album_id, executor_id)
VALUES (5, 2);


INSERT INTO Track (name, duration, album_id)
VALUES ('Song Title', 3.45, 5);









