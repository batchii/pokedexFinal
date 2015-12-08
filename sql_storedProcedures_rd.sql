/* DB Final Project
Katie Chang
Alec Tabatchnick
SQL
Stored Procedures */

/* Given an ability, how many unique pokemon have it, grouped by generation? 
	As example, use levitate*/

CREATE PROCEDURE ShowAbilitiesbyGeneration (IN ab VarChar(14))
BEGIN IF EXISTS
	(SELECT A.identifier FROM abilities A WHERE R.identifier = ab) THEN
SELECT PFG.generation_id, A.identifier, count(*) AS numUnique
FROM abilities A, pokemon_abilities PA, pokemon P, edited_pokemon_form_generations PFG
WHERE A.id = PA.ability_id 
	AND PA.pokemon_id = P.id 
	AND P.id = PFG.pokemon_form_id 
	AND A.identifier = ab
GROUP BY PFG.generation_id; ELSE
    (SELECT 'Ability Not Found' AS 'Error Message'; END IF;
END//

delimiter ;

/*CALL ShowAbilitiesbyGeneration("levitate")*/
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

CREATE PROCEDURE ShowHowToEvolve (IN temppokes VarChar(21))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = temppokes) THEN
SELECT
FROM pokemon P, pokemon_species PS, pokemon_evolution PE, evolution_triggers ET,
	items I, genders GEN, locations L, moves MO, types T
WHERE P.id = PS.evolves_from_species_id 
	AND PS.id = PE.evolved_species_id
	AND PE.evolution_trigger_id = ET.id
	AND PE.trigger_item_id = I.id 
	AND PE.held_item_id = I.id
	AND PE.gender_id = GEN.id
	AND PE.location_id = L.id
	AND PE.known_move_id = MO.id
	AND PE.known_move_type = T.id
	AND PE.known_move_type = T.id
; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'; END IF;
END//

delimiter ;

/*CALL ShowHowToEvolve("pikachu")*/

/* In which region(s) can I catch a given pokemon? */

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
    (SELECT 'Pokemon Not Found' AS 'Error Message'; END IF;
END//

delimiter ;

/*CALL PokemonRegion("tentacool")*/
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

CREATE PROCEDURE BestBaseStatbyGen (IN generationWhat INT)
BEGIN IF EXISTS
	(SELECT PFG.generation_id FROM pokemon_form_generation PFG WHERE PFG.generation_id = generationWhat) THEN
SELECT P.identifier, sum(PS.base_stat) 
FROM pokemon_form_generations PFG, pokemon_stats PS, pokemon P 
WHERE PFG.pokemon_form_id = PS.pokemon_id 
	AND PS.pokemon_id = P.id 
	AND PFG.generation_id = generationWhat
GROUP BY PFG.pokemon_form_id 
ORDER BY SUM(PS.base_stat) DESC LIMIT 1; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'; END IF;
END//

delimiter ;

/*CALL BestBaseStatbyGen(1)*/
/*Should show:
+------------+-------------------+
| identifier | sum(PS.base_stat) |
+------------+-------------------+
| mewtwo     |               680 |
+------------+-------------------+
*/

/* Select all pokemon of two given types */

CREATE PROCEDURE GetPokemonwithTwoTypes (IN typeOne VarChar(8), IN typeTwo VarChar(8))
BEGIN IF EXISTS
	(SELECT T.id FROM types T WHERE T.id = typeOne OR T.id = typeTwo) THEN
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
(SELECT 'Type Not Found' AS 'Error Message'; END IF;
END//

delimiter ;	
			
/*CALL GetPokemonwithTwoTypes("fire", "ground")*/
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

/*select all pokemon with weight less than a given amount and of a given type*/

CREATE PROCEDURE GetPokemonwithWeightandType (IN weight INT, IN typeOne VarChar(8))
