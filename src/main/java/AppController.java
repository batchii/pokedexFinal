import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import database.AbilitiesByGenerationDTO;
import jdk.nashorn.internal.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Collections;
import java.util.List;

import static spark.Spark.*;

/**
 * Created by ubuntu on 12/8/15.
 */
public class AppController {

    private static final String API_CONTEXT = "/pokedex/api";

    private final AppService appService;

    private final Logger logger = LoggerFactory.getLogger(AppController.class);

    public AppController(AppService appService) {
        this.appService = appService;
        setupEndpoints();
    }

    private void setupEndpoints() {
        //Create a new TODO
        post(API_CONTEXT + "/games", "application/json", (request, response) -> {
            JsonParser p = new JsonParser();
            JsonObject req = p.parse(request.body()).getAsJsonObject();

            //Game game = gameService.startNewGame(req.get("pieceType").getAsString());
            response.status(201);
            JsonObject json = new JsonObject();
            //json.addProperty("gameId", game.getGameId());
            return json;
        }, new JsonTransformer());

        get(API_CONTEXT + "/test", "application/json", (request, response) -> {
            String gameState = "hello world!";
            JsonObject json = new JsonObject();
            json.addProperty("state", gameState);
            response.status(200);
            return json;
        }, new JsonTransformer());

        get(API_CONTEXT + "/AbilitiesByGeneration/:ability_name", "application/json", (request, response) ->{
            String abilityName = request.params("ability_name");
            return appService.getAbilitiesByGeneration(abilityName);
        }, new JsonTransformer());

        get(API_CONTEXT + "/PokemonRegion/:pokemon_name", "application/json", (request, response) -> {
            String pokemon = request.params("pokemon_name");
            return appService.pokemonRegion(pokemon);
        }, new JsonTransformer());

        get(API_CONTEXT + "/PokemonLocation/:pokemon_name", "application/json", (request, response) -> {
            String pokemon = request.params("pokemon_name");
            return appService.pokemonLocation(pokemon);
        }, new JsonTransformer());

        get(API_CONTEXT + "/WhatPokemonHere/:location", "application/json", (request, response) -> {
            String location = request.params("location");
            return appService.whatPokemonHere(location);
        }, new JsonTransformer());

        get(API_CONTEXT + "/BestBaseStatByGen/:gen", "application/json", (request, response) -> {
            Integer gen = Integer.parseInt(request.params("gen"));
            return appService.bestBaseStatByGen(gen);
        }, new JsonTransformer());

        get(API_CONTEXT + "/GetPokemonWithTwoTypes/:typeOne/:typeTwo", "application/json", (request, response) -> {
            String typeOne = request.params("typeOne");
            String typeTwo = request.params("typeTwo");
            return appService.getPokemonWithTwoTypes(typeOne, typeTwo);
        }, new JsonTransformer());

        get(API_CONTEXT + "/PokemonMoreThanOneEvolution/:type", "application/json", (request, response) -> {
            String type = request.params("type");
            return appService.pokemonMoreThanOneEvolution(type);
        }, new JsonTransformer());


        get(API_CONTEXT + "/GetPokemonWithWeightAndType/:weight/:type", "application/json", (request, response) -> {
            Integer weight = Integer.parseInt(request.params("weight"));
            String type = request.params("type");
            return appService.getPokemonWithWeightAndType(weight, type);
        }, new JsonTransformer());

        get(API_CONTEXT + "/GetTypesOfPokesThatCanUseMove/:move", "application/json", (request, response) -> {
            String move = request.params("move");
            return appService.getTypesOfPokesThatCanUseMove(move);
        }, new JsonTransformer());

        get(API_CONTEXT + "/GetPokesThatCanUseMove/:move", "application/json", (request, response) -> {
            String move = request.params("move");
            return appService.getPokesThatCanUseMove(move);
        }, new JsonTransformer());

        get(API_CONTEXT + "/GenerationUniquePokemon/:gen", "application/json", (request, response) -> {
            String gen = request.params("gen");
            return appService.generationUniquePokemon(gen);
        }, new JsonTransformer());

        get(API_CONTEXT + "/NumUniquePokemonByType/:type", "application/json", (request, response) -> {
            String type = request.params("type");
            return appService.numUniquePokemonByType(type);
        }, new JsonTransformer());

        get(API_CONTEXT + "/GetPokemonWithOneType/:type", "application/json", (request, response) -> {
            String type = request.params("type");
            return appService.getPokemonWithOneType(type);
        }, new JsonTransformer());

        get(API_CONTEXT + "/AllPokemonNeedAHeldToEvolve/:held_item", "application/json", (request, response) -> {
            String heldItem = request.params("held_item");
            return appService.allPokemonNeedAHeldToEvolve(heldItem);
        }, new JsonTransformer());

        get(API_CONTEXT + "/AllPokemonNeedATriggerToEvolve/:trigger_item", "application/json", (request, response) -> {
            String triggerItem = request.params("trigger_item");
            return appService.allPokemonNeedATriggerToEvolve(triggerItem);
        }, new JsonTransformer());

        get(API_CONTEXT + "/PokemonEvolutionChain/:pokemon", "application/json", (request, response) -> {
            String pokemon = request.params("pokemon");
            return appService.pokemonEvolutionChain(pokemon);
        }, new JsonTransformer());
    }
}
