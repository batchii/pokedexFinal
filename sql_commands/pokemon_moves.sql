DROP TABLE pokemon_moves;

CREATE TABLE pokemon_moves {
	pokemon_id INT NOT NULL,
	move_id INT NOT NULL,
	pokemon_move_method_id INT NOT NULL,
	required_level INT NOT NULL
};
