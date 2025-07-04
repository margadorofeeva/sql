CREATE TABLE IF NOT EXISTS Executor(
executor_id SERIAL PRIMARY KEY,
pseudonym VARCHAR(40) 
);

CREATE TABLE IF NOT EXISTS Genre(
genre_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Album(
album_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
year_of_release DATE
);

CREATE TABLE IF NOT EXISTS Track(
track_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
duration REAL,
album_id INTEGER REFERENCES Album(album_id)
);

ALTER TABLE track
ALTER COLUMN duration TYPE REAL;


CREATE TABLE IF NOT EXISTS Collection(
collection_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
year_of_release DATE
);

CREATE TABLE IF NOT EXISTS Collection_track(
track_id INTEGER REFERENCES Track(track_id),
collection_id INTEGER REFERENCES Collection(collection_id),
CONSTRAINT PK_collection_track PRIMARY KEY (track_id, collection_id)
);


CREATE TABLE IF NOT EXISTS executor_genre(
executor_id INTEGER REFERENCES Executor(executor_id),
genre_id INTEGER REFERENCES Genre(genre_id),
CONSTRAINT PK_executor_genre PRIMARY KEY (executor_id , genre_id)
);

CREATE TABLE IF NOT EXISTS album_executor_(
album_id INTEGER REFERENCES Album(album_id),
executor_id INTEGER references Executor(executor_id),
CONSTRAINT PK_album_executor PRIMARY KEY (album_id, executor_id)
);