-- DROP TABLE IF EXISTS characters, teams, leaders, managers CASCADE;

-- CREATE TABLE teams(
--     team_id serial PRIMARY KEY,
--     team_name VARCHAR NOT NULL,
--     leader_id integer UNIQUE
-- );

-- CREATE TABLE managers(
--     manager_id serial PRIMARY KEY,
--     team_id integer UNIQUE references teams,
--     manager_name VARCHAR NOT NULL
-- );

-- CREATE TABLE characters(
--     character_id serial PRIMARY KEY,
--     team_id integer references teams,
--     character_name VARCHAR NOT NULL
-- );

-- CREATE TABLE leaders(
--     leader_id serial PRIMARY KEY,
--     character_id integer UNIQUE references characters
-- );

-- ALTER TABLE teams
-- ADD CONSTRAINT fk_leader_id FOREIGN KEY (leader_id) references leaders(leader_id);

DROP TABLE IF EXISTS teams, people, characters CASCADE;

DROP TYPE IF EXISTS team_role;

CREATE TABLE teams(
    team_id serial PRIMARY KEY,
    team_name VARCHAR NOT NULL
);

CREATE TYPE team_role AS ENUM('member', 'leader', 'owner');

CREATE TABLE people(
    person_id serial PRIMARY KEY,
    team_id integer references teams,
    team_role team_role,
    external_character_id VARCHAR
);


