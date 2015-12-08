DROP TABLE generations;

CREATE TABLE generations (
    id INT NOT NULL,
    main_region_id INT NOT NULL,
    identifier VARCHAR(14) CHARACTER SET utf8 NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO generations VALUES (1,1,'generation-i');
INSERT INTO generations VALUES (2,2,'generation-ii');
INSERT INTO generations VALUES (3,3,'generation-iii');
INSERT INTO generations VALUES (4,4,'generation-iv');
INSERT INTO generations VALUES (5,5,'generation-v');
INSERT INTO generations VALUES (6,6,'generation-vi');
