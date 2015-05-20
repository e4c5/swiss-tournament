-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--

CREATE DATABASE tournament;
-- connect to the newly created tournament database
\c tournament;

CREATE TABLE players (
    id serial PRIMARY KEY,
    name text
);

CREATE TABLE matches (
    id serial PRIMARY KEY,
    player1 int REFERENCES players(id),
    player2 int REFERENCES players(id),
    winner  int REFERENCES players(id)
);
