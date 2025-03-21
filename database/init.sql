BEGIN;

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    userid SERIAL PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    active BOOLEAN DEFAULT 'true'
);

INSERT INTO users (username,password,email,active) 
VALUES 
-- ('Kuala','$2y$10$GDBGnXjObP6inrMX2Mv7Ue6GFeC4KXv0YODMentLaT28TCoPoPRYK','durd2001@gmail.com','true'),
('Kuala','$2b$10$ErNLJE7wRRIExTPAhlQ.0.ZNJBy1VeHAIg93ae2ZD27qH6cRw51uy','durd2001@gmail.com','true'),

COMMIT;