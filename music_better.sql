DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    duration_in_seconds INTEGER NOT NULL,
    release_date DATE NOT NULL
)

CREATE TABLE albums(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE artists(
    id SERIAL PRIMARY KEY,
    name NOT NULL
)

CREATE TABLE producers(
    id SERIAL PRIMARY KEY,
    name NOT NULL
)

CREATE TABLE albums_songs(
    id SERIAL PRIMARY KEY,
    album_id REFERENCES albums(id),
    song_id REFERENCES songs(id)
)

CREATE TABLE albums_artists(
    id SERIAL PRIMARY KEY,
    album_id REFERENCES albums(id),
    artist_id REFERENCES artists(id)
)

CREATE TABLE albums_producers(
    id SERIAL PRIMARY KEY,
    album_id REFERENCES albums(id),
    prod_id REFERENCES artists(id)
)