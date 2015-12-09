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
    }
}
