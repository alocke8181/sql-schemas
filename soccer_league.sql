CREATE TABLE leagues(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
)

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    wins INT DEFAULT 0
)

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
)

CREATE TABLE referees(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
)

CREATE TABLE games(
    id SERIAL PRIMARY KEY,
    game_date DATE NOT NULL,
    team1 REFERENCES teams(id),
    team2 REFERENCES teams(id)
)

CREATE TABLE leagues_teams(
    id SERIAL PRIMARY KEY,
    league_id REFERENCES leagues(id),
    team_id REFERENCES teams(id)
)

CREATE TABLE teams_players(
    id SERIAL PRIMARY KEY,
    team_id REFERENCES teams(id),
    player_id REFERENCES players(id)
)

CREATE TABLE games_refs(
    id SERIAL PRIMARY KEY,
    game_id REFERENCES games(id),
    ref_id REFERENCES referees(id)
)

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    game_id REFERENCES games(id),
    player_id REFERENCES players(id)
)

-- Command to get the ranks of all the teams
--SELECT name, wins FROM teams 
--JOIN leagues_teams ON team_id 
--GROUP BY league_id HAVING league_id = [LEAGUE ID] 
--ORDER BY wins DESC