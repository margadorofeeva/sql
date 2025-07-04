SELECT name, duration FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name FROM track
WHERE duration >= 3.5;

SELECT name FROM collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2021-01-01';

SELECT pseudonym FROM executor
WHERE pseudonym NOT LIKE '% %';

SELECT name FROM track
WHERE name LIKE 'My%';




SELECT genre.name, COUNT (executor_genre.executor_id) FROM genre
JOIN executor_genre ON Genre.genre_id = executor_genre.genre_id
GROUP BY Genre.name
ORDER BY COUNT(executor_genre.executor_id) DESC;

SELECT COUNT (track.track_id) from track
JOIN album ON track.album_id = album.album_id
WHERE album.year_of_release BETWEEN '2019-01-01' AND '2020-12-31';


SELECT album.name, AVG(track.duration) FROM album
JOIN track ON album.album_id = track.album_id
GROUP BY album.name
ORDER BY AVG(track.duration) desc;


SELECT pseudonym FROM executor
WHERE executor.executor_id NOT IN (
SELECT album_executor_.executor_id from album_executor_
JOIN album ON album_executor_.album_id = album.album_id
WHERE EXTRACT(YEAR FROM album.year_of_release) = 2020
);

SELECT collection.name FROM collection
JOIN collection_track ON collection.collection_id = collection_track.collection_id
JOIN track ON collection_track.track_id = track.track_id
JOIN album ON track.album_id = album.album_id
JOIN album_executor_ ON album.album_id = album_executor_.album_id
JOIN executor ON album_executor_.executor_id = executor.executor_id
WHERE executor.pseudonym = 'Lady Gaga';