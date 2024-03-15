USE cat_app;

CREATE TABLE cats (
  cat_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  breed VARCHAR(100),
  age INT
);

INSERT INTO cats (name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Persian', 4),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats;


SELECT cat_id AS id, name FROM cats;
SELECT name AS cat_name, breed AS kitty_breed FROM cats;