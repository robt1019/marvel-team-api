DROP TABLE IF EXISTS characters, teams, leaders, members, owners, users, admins CASCADE;

CREATE TABLE characters(
    character_id serial PRIMARY KEY,
    character_name VARCHAR NOT NULL
);

CREATE TABLE teams(
    team_id serial PRIMARY KEY,
    team_name VARCHAR NOT NULL
);

CREATE TABLE leaders(
    character_id INTEGER UNIQUE NOT NULL references characters,
    team_id INTEGER UNIQUE NOT NULL references teams,
    PRIMARY KEY(character_id, team_id)
);

CREATE TABLE members(
    character_id INTEGER NOT NULL references characters,
    team_id INTEGER NOT NULL references teams,
    PRIMARY KEY(character_id, team_id)
);

CREATE TABLE users(
    user_id serial PRIMARY KEY,
    user_name VARCHAR NOT NULL,
    email_address VARCHAR NOT NULL
);

CREATE TABLE owners(
    user_id INTEGER NOT NULL references users,
    team_id INTEGER UNIQUE NOT NULL references teams
);

CREATE TABLE admins(
    user_id INTEGER UNIQUE NOT NULL references users
);


