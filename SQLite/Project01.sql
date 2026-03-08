CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATA
);

INSERT INTO friends(id, name, birthday)
VALUES (1,'Ororo Munroe','30-05-1940');
        -- 2,'Marcelo Ozie','05-12-1949');
INSERT INTO friends(id, name, birthday)
VALUES (2,'Marcelo Ozie','05-12-1949');

INSERT INTO friends(id, name, birthday)
VALUES (3,'Anie Lizard','17-04-1987');

UPDATE friends
SET name = "Tempestade"
WHERE name = 'Ororo Munroe';

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 3;

DELETE FROM friends 
WHERE id
IN (1);

SELECT *
FROM friends;
