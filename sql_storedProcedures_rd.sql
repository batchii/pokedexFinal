/* DB Final Project
Katie Chang
Alec Tabatchnick
SQL
Stored Procedures */

/* Given an ability, how many unique pokemon have it, grouped by generation? 
	As example, use levitate*/

delimiter //

CREATE PROCEDURE showAbilitiesByGeneration (IN ab VarChar(14))
BEGIN IF EXISTS
	(SELECT A.identifier FROM abilities A WHERE A.identifier = ab) THEN
SELECT PFG.generation_id, A.identifier, count(*) AS numUnique
FROM abilities A, pokemon_abilities PA, pokemon P, pokemon_form_generations PFG
WHERE A.id = PA.ability_id 
	AND PA.pokemon_id = P.id 
	AND P.id = PFG.pokemon_form_id 
	AND A.identifier = ab
GROUP BY PFG.generation_id; ELSE
    (SELECT 'Ability Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call showAbilitiesByGeneration("levitate")*/
/*Should show:
+---------------+------------+-----------+
| generation_id | identifier | numUnique |
+---------------+------------+-----------+
|             1 | levitate   |         5 |
|             2 | levitate   |         2 |
|             3 | levitate   |        10 |
|             4 | levitate   |        10 |
|             5 | levitate   |         5 |
+---------------+------------+-----------+
*/

/* How does a pokemon evolve, if at all? 
IMCOMPLETE*/

-- delimiter //
-- 
-- CREATE PROCEDURE ShowHowToEvolve (IN temppokes VarChar(21))
-- BEGIN IF EXISTS
-- 	(SELECT P.identifier FROM pokemon P WHERE P.identifier = temppokes) THEN
-- SELECT *
-- FROM pokemon P, pokemon_species PS, pokemon_evolution PE, evolution_triggers ET,
-- 	items I, genders GEN, locations L, moves MO, types T
-- WHERE P.id = PS.evolves_from_species_id 
-- 	AND PS.id = PE.evolved_species_id
-- 	AND PE.evolution_trigger_id = ET.id
-- 	AND PE.trigger_item_id = I.id 
-- 	AND PE.held_item_id = I.id
-- 	AND PE.gender_id = GEN.id
-- 	AND PE.location_id = L.id
-- 	AND PE.known_move_id = MO.id
-- 	AND PE.known_move_type_id = T.id
-- 	AND PE.party_type_id = T.id
-- 	AND PE.trade_species_id = blah
-- ; ELSE
--     (SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
-- END//
-- 
-- delimiter ;

/*call ShowHowToEvolve("pikachu")*/

/* In which region(s) can I catch a given pokemon? */

delimiter //

CREATE PROCEDURE PokemonRegion (IN temppokes VarChar(21))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = temppokes) THEN
SELECT P.identifier, R.identifier
FROM pokemon P, encounters E, locations L, regions R
WHERE P.id = E.pokemon_id
	AND E.location_area_id = L.id 
	AND L.region_id = R.id
	AND P.identifier = temppokes
GROUP BY R.identifier; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call PokemonRegion("tentacool")*/
/* Should show: 
+------------+------------+
| identifier | identifier |
+------------+------------+
| tentacool  | hoenn      |
| tentacool  | johto      |
| tentacool  | kanto      |
| tentacool  | sinnoh     |
| tentacool  | unova      |
+------------+------------+
*/

/* Which pokemon from a given generation has highest base stats? */

delimiter //

CREATE PROCEDURE BestBaseStatbyGen (IN generationWhat INT)
BEGIN IF EXISTS
	(SELECT PFG.generation_id FROM pokemon_form_generations PFG WHERE PFG.generation_id = generationWhat) THEN
SELECT P.identifier, sum(PS.base_stat) 
FROM pokemon_form_generations PFG, pokemon_stats PS, pokemon P 
WHERE PFG.pokemon_form_id = PS.pokemon_id 
	AND PS.pokemon_id = P.id 
	AND PFG.generation_id = generationWhat
GROUP BY PFG.pokemon_form_id 
ORDER BY SUM(PS.base_stat) DESC LIMIT 1; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call BestBaseStatbyGen("1")*/
/*Should show:
+------------+-------------------+
| identifier | sum(PS.base_stat) |
+------------+-------------------+
| mewtwo     |               680 |
+------------+-------------------+
*/

/* Select all pokemon of two given types */

delimiter //

CREATE PROCEDURE GetPokemonwithTwoTypes (IN typeOne VarChar(8), IN typeTwo VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne OR T.identifier = typeTwo) THEN
SELECT P.id, P.identifier, T.identifier AS TypeOne, secondType.identifier AS TypeTwo
FROM types T, pokemon_types PT, pokemon P,
	(SELECT PT2.pokemon_id 
	FROM types T2, pokemon_types PT2, pokemon P2 
	WHERE T2.id = PT2.type_id 
		AND PT2.pokemon_id = P2.id 
		AND T2.identifier = typeTwo) AS secondType 
WHERE T.id = PT.type_id 
	AND PT.pokemon_id = P.id 
	AND T.identifier = typeOne
	AND PT.pokemon_id = secondType.pokemon_id; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;	
			
/*call GetPokemonwithTwoTypes("fire", "ground")*/
/* Should show: 
+-------+----------------+---------+---------+
| id    | identifier     | TypeOne | TypeTwo |
+-------+----------------+---------+---------+
|   322 | numel          | ground  | fire    |
|   323 | camerupt       | ground  | fire    |
| 10078 | groudon-primal | ground  | fire    |
| 10087 | camerupt-mega  | ground  | fire    |
+-------+----------------+---------+---------+
*/

/* Select pokemon with more than one evolution of a given type.
Or at least three different forms*/

delimiter //

CREATE PROCEDURE pokemonMoreThanOneEvolution (IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT DISTINCT(PS.identifier), T.identifier
FROM pokemon_species PS, pokemon_evolution PE, types T, pokemon_types PT
WHERE PS.evolves_from_species_id is NOT NULL
	AND PE.evolved_species_id != PS.evolves_from_species_id
	AND PS.id = PT.pokemon_id
	AND PT.type_id = T.id
	AND T.identifier = typeOne; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call pokemonMoreThanOneEvolution("ghost");*/

/*Should show:
+------------+------------+
| identifier | identifier |
+------------+------------+
| haunter    | ghost      |
| gengar     | ghost      |
| shedinja   | ghost      |
| banette    | ghost      |
| dusclops   | ghost      |
| drifblim   | ghost      |
| mismagius  | ghost      |
| dusknoir   | ghost      |
| froslass   | ghost      |
| cofagrigus | ghost      |
| jellicent  | ghost      |
| lampent    | ghost      |
| chandelure | ghost      |
| golurk     | ghost      |
| doublade   | ghost      |
| aegislash  | ghost      |
| trevenant  | ghost      |
| gourgeist  | ghost      |
+------------+------------+
*/

/*select all pokemon with weight greater than a given amount and of a given type*/

delimiter //

CREATE PROCEDURE getPokemonWithWeightAndType (IN weight INT, IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT P.id, P.identifier, T.identifier, P.weight
FROM pokemon P, types T, pokemon_types PT
WHERE P.id = PT.pokemon_id
	AND PT.type_id = T.id
	AND T.identifier = typeOne
	AND P.weight > weight; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter;

/*call getPokemonWithWeightAndType(1000, "fire");*/
/* Should show:
+-------+------------------+------------+--------+
| id    | identifier       | identifier | weight |
+-------+------------------+------------+--------+
|    59 | arcanine         | fire       |   1550 |
|   244 | entei            | fire       |   1980 |
|   250 | ho-oh            | fire       |   1990 |
|   323 | camerupt         | fire       |   2200 |
|   485 | heatran          | fire       |   4300 |
|   500 | emboar           | fire       |   1500 |
|   643 | reshiram         | fire       |   3300 |
|   721 | volcanion        | fire       |   1950 |
| 10034 | charizard-mega-x | fire       |   1105 |
| 10035 | charizard-mega-y | fire       |   1005 |
| 10078 | groudon-primal   | fire       |   9997 |
| 10087 | camerupt-mega    | fire       |   3205 |
+-------+------------------+------------+--------+
*/

/*select all types of pokemon who can use a given move.*/

-- delimiter //
-- 
-- CREATE PROCEDURE getTypesOfPokesThatCanUseMove(in move VARCHAR(16))
-- BEGIN IF EXISTS
-- 	(SELECT MO.identifier FROM moves MO WHERE MO.identifier = move) THEN
-- SELECT P.id, P.identifier, T.identifier
-- FROM pokemon P, pokemon_types PT, pokemon_moves PM, moves MO, types T
-- WHERE MO.id = PM.move_id
-- 	AND PM.pokemon_id = PT.pokemon_id
-- 	AND PT.pokemon_id = P.id
-- 	AND PT.type_id = T.id
-- 	AND MO.identifier = move; ELSE
-- (SELECT 'Move Not Found' AS 'Error Message'); END IF;
-- END//
-- 
-- delimiter ;

/* call getTypesOfPokesThatCanUseMove("Tackle");*/
/*show show: 
3035 rows in set (3 min 33.18 sec)
*/

/*select number of unique pokemon in a generation */

delimiter //

CREATE PROCEDURE generationUniquePokemon(in gen INT)
BEGIN IF EXISTS
	(SELECT GEN.id FROM generations GEN WHERE GEN.id = gen) THEN
SELECT GEN.id, GEN.identifier, count(*) as UniquePokemon
FROM pokemon_form_generations PFG, generations GEN
WHERE PFG.generation_id = GEN.id
	AND GEN.id = gen; ELSE
(SELECT 'Generation Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call generationUniquePokemon(5);*/
/* Should show: 
+----+--------------+---------------+
| id | identifier   | UniquePokemon |
+----+--------------+---------------+
|  5 | generation-v |           156 |
+----+--------------+---------------+
*/

/* List all second evolution pokemon that are of two given types.*/
/* INC OMPLETEEE*/

/*Show number of unique pokemon in a given type.*/

delimiter //

CREATE PROCEDURE numUniquePokemonByType (IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT T.identifier as SearchType, count(*) as UniquePokemon
FROM types T, pokemon_types PT
WHERE T.id = PT.type_id 
	AND T.identifier = typeOne; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;	

/* call numUniquePokemonByType("water"); */
/*Should show:
+------------+---------------+
| SearchType | UniquePokemon |
+------------+---------------+
| water      |           128 |
+------------+---------------+
*/

/* Select all pokemon of a given type (one type, broader) */

delimiter //

CREATE PROCEDURE getPokemonWithOneType (IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT P.id, P.identifier, T.identifier
FROM types T, pokemon_types PT, pokemon P
WHERE T.id = PT.type_id 
	AND PT.pokemon_id = P.id 
	AND T.identifier = typeOne; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;	

/* call getPokemonWithOneType("water");*/
/*Should show:
128 rows in set (0.02 sec)
*/

/* select all pokemon that require a held item to evolve*/
-- 
-- delimiter //
-- 
-- CREATE PROCEDURE allPokemonNeedAHeldToEvolve (IN heldItem VarChar(16))
-- BEGIN IF EXISTS
-- 	(SELECT I.identifier FROM items I WHERE I.identifier = heldItem) THEN
-- SELECT P.identifier, I.identifier
-- FROM pokemon P, pokemon_species PS, pokemon_evolution PE, items I
-- WHERE PE.held_item_int is NOT NULL
-- 	AND PE.evolved
-- 
-- 
-- 
-- -- 	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
-- -- SELECT DISTINCT(PS.identifier), T.identifier
-- -- FROM pokemon_species PS, pokemon_evolution PE, types T, pokemon_types PT
-- -- WHERE PS.evolves_from_species_id is NOT NULL
-- -- 	AND PE.evolved_species_id != PS.evolves_from_species_id
-- -- 	AND PS.id = PT.pokemon_id
-- -- 	AND PT.type_id = T.id
-- -- 	AND T.identifier = typeOne; ELSE
-- -- (SELECT 'Type Not Found' AS 'Error Message'); END IF;
-- -- END//
-- -- 
-- -- delimiter ;











