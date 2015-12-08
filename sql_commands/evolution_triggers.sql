DROP TABLE evolution_triggers;

CREATE TABLE evolution_triggers (
    id INT NOT NULL,
    identifier VARCHAR(8) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY ( id)
);
INSERT INTO evolution_triggers VALUES (1,'level-up');
INSERT INTO evolution_triggers VALUES (2,'trade');
INSERT INTO evolution_triggers VALUES (3,'use-item');
INSERT INTO evolution_triggers VALUES (4,'shed');
