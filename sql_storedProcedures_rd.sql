/* DB Final Project
Katie Chang
Alec Tabatchnick
SQL
Stored Procedures */

/* Given an ability, how many unique pokemon have it, grouped by generation? */

DROP PROCEDURE IF EXISTS showAbilitiesByGeneration;

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

/* In which region(s) can I catch a given pokemon? */

DROP PROCEDURE IF EXISTS pokemonRegion;

delimiter //

CREATE PROCEDURE pokemonRegion (IN temppokes VarChar(21))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = temppokes) THEN
SELECT P.identifier as Pokemon, R.identifier as Region
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
+-----------+--------+
| Pokemon   | Region |
+-----------+--------+
| tentacool | hoenn  |
| tentacool | johto  |
| tentacool | kanto  |
| tentacool | sinnoh |
| tentacool | unova  |
+-----------+--------+
*/

/* In which location(s) can I catch a given pokemon? */

DROP PROCEDURE IF EXISTS pokemonLocation;

delimiter //

CREATE PROCEDURE pokemonLocation (IN temppokes VarChar(21))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = temppokes) THEN
SELECT P.identifier as Pokemon, L.identifier as Location
FROM pokemon P, encounters E, locations L
WHERE P.id = E.pokemon_id
	AND E.location_area_id = L.id 
	AND P.identifier = temppokes
GROUP BY L.identifier; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call pokemonLocation('pikachu');
Should show: 
+---------+------------------+
| Pokemon | Location         |
+---------+------------------+
| pikachu | hoenn-route-109  |
| pikachu | johto-route-38   |
| pikachu | lilycove-city    |
| pikachu | mirage-tower     |
| pikachu | mossdeep-city    |
| pikachu | pc-nagoya        |
| pikachu | pokemon-event-10 |
+---------+------------------+
7 rows in set (0.33 sec)
*/


/* What pokemon can I catch at a given location? */

DROP PROCEDURE IF EXISTS whatPokemonHere;

delimiter //

CREATE PROCEDURE whatPokemonHere(IN loc VARCHAR(23))
BEGIN IF EXISTS
	(SELECT L.identifier FROM locations L WHERE L.identifier = loc) THEN
SELECT P.id, P.identifier
FROM locations L, encounters E, pokemon P
WHERE L.id = E.location_area_id
	AND E.pokemon_id = P.id
	AND L.identifier = loc
GROUP BY P.id; ELSE
	(SELECT 'Location Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call whatPokemonHere("canalave-city"); */
/* Should show:
+-----+------------+
| id  | identifier |
+-----+------------+
|  72 | tentacool  |
|  73 | tentacruel |
| 120 | staryu     |
| 129 | magikarp   |
| 130 | gyarados   |
| 278 | wingull    |
| 279 | pelipper   |
| 422 | shellos    |
| 423 | gastrodon  |
| 456 | finneon    |
| 457 | lumineon   |
+-----+------------+
11 rows in set (0.37 sec)
*/

/* Which pokemon from a given generation has highest base stats? */

DROP PROCEDURE IF EXISTS bestBaseStatByGen;

delimiter //

CREATE PROCEDURE bestBaseStatByGen (IN generationWhat INT)
BEGIN IF EXISTS
	(SELECT PFG.generation_id FROM pokemon_form_generations PFG WHERE PFG.generation_id = generationWhat) THEN
SELECT P.identifier as Pokemon, sum(PS.base_stat) as TotalBaseStat
FROM pokemon_form_generations PFG, pokemon_stats PS, pokemon P 
WHERE PFG.pokemon_form_id = PS.pokemon_id 
	AND PS.pokemon_id = P.id 
	AND PFG.generation_id = generationWhat
GROUP BY PFG.pokemon_form_id 
ORDER BY SUM(PS.base_stat) DESC LIMIT 1; ELSE
    (SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call bestBaseStatByGen("1")*/
/*Should show:
+---------+---------------+
| Pokemon | TotalBaseStat |
+---------+---------------+
| mewtwo  |           680 |
+---------+---------------+
*/

/* Select all pokemon of two given types */

DROP PROCEDURE IF EXISTS getPokemonWithTwoTypes;

delimiter //

CREATE PROCEDURE getPokemonWithTwoTypes (IN typeOne VarChar(8), IN typeTwo VarChar(8))
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
			
/*call getPokemonWithTwoTypes("fire", "ground")*/
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

/*Select all Pokemon that are of one given type with more than one evolution.*/

DROP PROCEDURE IF EXISTS pokemonMoreThanOneEvolution;

delimiter //

CREATE PROCEDURE pokemonMoreThanOneEvolution (IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT DISTINCT(PS.identifier) as pokemon, T.identifier as typeOne 
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
| pokemon    | typeOne    |
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

DROP PROCEDURE IF EXISTS getPokemonWithWeightAndType;

delimiter //

CREATE PROCEDURE getPokemonWithWeightAndType (IN weight INT, IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT P.id, P.identifier as Pokemon, T.identifier as Type, P.weight
FROM pokemon P, types T, pokemon_types PT
WHERE P.id = PT.pokemon_id
	AND PT.type_id = T.id
	AND T.identifier = typeOne
	AND P.weight > weight; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call getPokemonWithWeightAndType(1000, "fire");*/
/* Should show:
+-------+------------------+------+--------+
| id    | Pokemon          | Type | weight |
+-------+------------------+------+--------+
|    59 | arcanine         | fire |   1550 |
|   244 | entei            | fire |   1980 |
|   250 | ho-oh            | fire |   1990 |
|   323 | camerupt         | fire |   2200 |
|   485 | heatran          | fire |   4300 |
|   500 | emboar           | fire |   1500 |
|   643 | reshiram         | fire |   3300 |
|   721 | volcanion        | fire |   1950 |
| 10034 | charizard-mega-x | fire |   1105 |
| 10035 | charizard-mega-y | fire |   1005 |
| 10078 | groudon-primal   | fire |   9997 |
| 10087 | camerupt-mega    | fire |   3205 |
+-------+------------------+------+--------+
12 rows in set (0.01 sec)
*/

/*select all types of pokemon who can use a given move.*/

DROP PROCEDURE IF EXISTS getTypesOfPokesThatCanUseMove;

delimiter //

CREATE PROCEDURE getTypesOfPokesThatCanUseMove(in move VARCHAR(16))
BEGIN IF EXISTS
	(SELECT MO.identifier FROM moves MO WHERE MO.identifier = move) THEN
SELECT T.identifier
FROM pokemon P, pokemon_types PT, pokemon_moves PM, moves MO, types T
WHERE MO.id = PM.move_id
	AND PM.pokemon_id = PT.pokemon_id
	AND PT.pokemon_id = P.id
	AND PT.type_id = T.id
	AND MO.identifier = move
GROUP BY T.identifier; ELSE
(SELECT 'Move Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call getTypesOfPokesThatCanUseMove("Tackle");*/
/* Result takes around 25-35 seconds
should show: 
+------------+
| identifier |
+------------+
| bug        |
| dark       |
| dragon     |
| electric   |
| fairy      |
| fighting   |
| fire       |
| flying     |
| ghost      |
| grass      |
| ground     |
| ice        |
| normal     |
| poison     |
| psychic    |
| rock       |
| steel      |
| water      |
+------------+
18 rows in set (25.78 sec)
*/

/*select all pokemon who can use a given move.*/

DROP PROCEDURE IF EXISTS getPokesThatCanUseMove;

delimiter //

CREATE PROCEDURE getPokesThatCanUseMove(in move VARCHAR(16))
BEGIN IF EXISTS
	(SELECT MO.identifier FROM moves MO WHERE MO.identifier = move) THEN
SELECT P.identifier as Pokemon
FROM pokemon P, pokemon_moves PM, moves MO
WHERE MO.id = PM.move_id
	AND PM.pokemon_id = P.id
	AND MO.identifier = move
GROUP BY P.identifier; ELSE
(SELECT 'Move Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/*call getPokesThatCanUseMove('oblivion-wing');
Should Show:
+---------+
| Pokemon |
+---------+
| yveltal |
+---------+
1 row in set (0.74 sec)
*/

/*select number of unique pokemon in a generation */

DROP PROCEDURE IF EXISTS generationUniquePokemon;

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

/*Show number of unique pokemon in a given type.*/

DROP PROCEDURE IF EXISTS numUniquePokemonByType;

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

/* Select all pokemon of a given type */

DROP PROCEDURE IF EXISTS getPokemonWithOneType;

delimiter //

CREATE PROCEDURE getPokemonWithOneType (IN typeOne VarChar(8))
BEGIN IF EXISTS
	(SELECT T.identifier FROM types T WHERE T.identifier = typeOne) THEN
SELECT P.id, P.identifier as pokemon, T.identifier as typeOne
FROM types T, pokemon_types PT, pokemon P
WHERE T.id = PT.type_id 
	AND PT.pokemon_id = P.id 
	AND T.identifier = typeOne; ELSE
(SELECT 'Type Not Found' AS 'Error Message'); END IF;
END//

delimiter ;	

/* call getPokemonWithOneType("water");*/
/*Should show:
+-------+--------------------+-------+
| id    | pokemon            | type  |
+-------+--------------------+-------+
|     7 | squirtle           | water |
|     8 | wartortle          | water |
|     9 | blastoise          | water |
.........
.........
128 rows in set (0.02 sec)
*/

/* select all pokemon that require a given held item to evolve*/

DROP PROCEDURE IF EXISTS allPokemonNeedAHeldToEvolve;

delimiter //

CREATE PROCEDURE allPokemonNeedAHeldToEvolve (IN heldItem VarChar(16))
BEGIN IF EXISTS
	(SELECT I.identifier FROM items I WHERE I.identifier = heldItem) THEN
SELECT P.identifier as Pokemon, I.identifier as HeldItem
FROM pokemon P, pokemon_species PS, pokemon_evolution PE, items I
WHERE PE.held_item_id = I.id
	AND PE.evolved_species_id = PS.id
	AND PS.evolves_from_species_id = P.species_id
	AND I.identifier = heldItem; ELSE
(SELECT 'Item Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call allPokemonNeedAHeldToEvolve("protector");*/
/* Should show:
+---------+-----------+
| Pokemon | HeldItem  |
+---------+-----------+
| rhydon  | protector |
+---------+-----------+
*/


/* select all pokemon that require a given trigger item to evolve*/

DROP PROCEDURE IF EXISTS allPokemonNeedATriggerToEvolve;

delimiter //

CREATE PROCEDURE allPokemonNeedATriggerToEvolve (IN triggerItem VarChar(16))
BEGIN IF EXISTS
	(SELECT I.identifier FROM items I WHERE I.identifier = triggerItem) THEN
SELECT P.identifier as Pokemon, I.identifier as TriggerItem
FROM pokemon P, pokemon_species PS, pokemon_evolution PE, items I
WHERE PE.trigger_item_id = I.id
	AND PE.evolved_species_id = PS.id
	AND PS.evolves_from_species_id = P.species_id
	AND I.identifier = triggerItem; ELSE
(SELECT 'Item Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call allPokemonNeedATriggerToEvolve("thunder-stone"); */
/*Should show:

+-------------------+---------------+
| Pokemon           | TriggerItem   |
+-------------------+---------------+
| pikachu           | thunder-stone |
| eevee             | thunder-stone |
| eelektrik         | thunder-stone |
| pikachu-rock-star | thunder-stone |
| pikachu-belle     | thunder-stone |
| pikachu-pop-star  | thunder-stone |
| pikachu-phd       | thunder-stone |
| pikachu-libre     | thunder-stone |
| pikachu-cosplay   | thunder-stone |
+-------------------+---------------+
9 rows in set (0.00 sec)

//The extra Pikachu are special "cosplay" Pikachu. They're very cute. 
*/

/*For a given pokemon, list its evolved forms / pre-evolved forms
Basically, list its evolution chain*/

DROP PROCEDURE IF EXISTS pokemonEvolutionChain;

delimiter //

CREATE PROCEDURE pokemonEvolutionChain (IN pokemon VarChar(11))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = pokemon) THEN
SELECT DISTINCT(PS2.identifier) as Pokemon
FROM pokemon P, pokemon_species PS, pokemon_species PS2
WHERE PS.identifier = pokemon 
	AND PS.evolution_chain_id = PS2.evolution_chain_id
	AND PS.identifier = pokemon; ELSE
(SELECT 'Pokemon Not Found' AS 'Error Message'); END IF;
END//

delimiter ;

/* call pokemonEvolutionChain('eevee');
Should show:
+----------+
| Pokemon  |
+----------+
| eevee    |
| vaporeon |
| jolteon  |
| flareon  |
| espeon   |
| umbreon  |
| leafeon  |
| glaceon  |
| sylveon  |
+----------+
9 rows in set (0.18 sec)
*/

