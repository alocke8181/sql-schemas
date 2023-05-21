DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE passengers(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE countries(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE airlines(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE airports(
    id SERIAL PRIMARY KEY,
    city_id REFERENCES cities(id),
    country_id REFERENCES countries(id)
)

CREATE TABLE tickets(
    id SERIAL PRIMARY KEY,
    pax_id REFERENCES passengers(id),
    seat TEXT NOT NULL,
    departure TIMESTAMP NOT NULL,
    arrival TIMESTAMP NOT NULL,
    airline_id REFERENCES airlines(id),
    origin_id REFERENCES airports(id),
    dest_id REFERENCES airports(id)
)
