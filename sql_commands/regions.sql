
DROP TABLE regions;

CREATE TABLE regions (
    id INT NOT NULL,
    identifier VARCHAR(6) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO regions VALUES (1,'kanto');

INSERT INTO regions VALUES (2,'johto');

INSERT INTO regions VALUES (3,'hoenn');

INSERT INTO regions VALUES (4,'sinnoh');

INSERT INTO regions VALUES (5,'unova');

INSERT INTO regions VALUES (6,'kalos');

