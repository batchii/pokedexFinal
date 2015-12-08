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
	AND A.identifier = "levitate"
GROUP BY PFG.generation_id; ELSE
    (SELECT 'Ability Not Found' AS 'Error Message'; END IF;
END//

delimiter ;

/*CALL ShowAbilitiesbyGeneration("levitate")*/

/* How does a pokemon evolve, if at all? 
IMCOMPLETE*/

CREATE PROCEDURE ShowHowToEvolve (IN pokemon VarChar(21))
BEGIN IF EXISTS
	(SELECT P.identifier FROM pokemon P WHERE P.identifier = pokemon) THEN
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

