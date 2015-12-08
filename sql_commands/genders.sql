DROP TABLE genders;

CREATE TABLE genders (
    id INT NOT NULL,
    identifier VARCHAR(10) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO genders VALUES (1,'female');
INSERT INTO genders VALUES (2,'male');
INSERT INTO genders VALUES (3,'genderless');
