
-- INSERT INTO teams(team_name)
-- VALUES  ('Team 1'),
--         ('Team 2');

-- INSERT INTO managers(team_id, manager_name)
-- VALUES  (null, 'Manager 1'),
--         (1, 'Manager 2'),
--         (2, 'Manager 3');

-- INSERT INTO characters(team_id, character_name)
-- VALUES  (1, 'Character 1'),
--         (1, 'Character 2'),
--         (1, 'Character 3'),
--         (2, 'Character 4');

-- INSERT INTO leaders(character_id)
-- VALUES  (3),
--         (4);

-- UPDATE teams SET leader_id = 1 WHERE team_id = 1;

INSERT INTO teams(team_name)
VALUES  ('Team 1'),
        ('Team 2'),
        ('Team 3');

INSERT INTO people(team_id, team_role, external_character_id)
VALUES  (1, 'leader', 'marvel_api_1'),
        (1, 'member', 'marvel_api_2'),
        (1, 'member', 'marvel_api_3'),
        (1, 'member', 'marvel_api_4'),
        (1, 'owner', NULL);
