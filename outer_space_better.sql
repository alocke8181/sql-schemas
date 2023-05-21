DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE galaxies(
    id SERIAL PRIMARY KEY,
    gal_name TEXT NOT NULL,
)

CREATE TABLE planets(
    id SERIAL PRIMARY KEY,
    plan_name TEXT NOT NULL,
    orbital_period_in_years FLOAT NOT NULL,
)

CREATE TABLE moons(
    id SERIAL PRIMARY KEY,
    moon_name TEXT NOT NULL
)

CREATE TABLE galaxies_planets(
    id SERIAL PRIMARY KEY,
    gal_id REFERENCES galaxies(id),
    plan_id REFERENCES planets(id)
)

CREATE TABLE planets_moons(
    id SERIAL PRIMARY KEY,
    plan_id REFERENCES planets(id),
    moon_id REFERENCES moons(id) DEFAULT NULL
)