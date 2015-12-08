import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;

import static spark.Spark.*;

/**
 * Created by ubuntu on 12/8/15.
 */
public class AppService {

    private static int gameId = 1;

    /**
     * Stores the current games
     */
    private HashMap<Integer, Integer> gameHashMap;

    private static final Gson gson = new Gson();

    public AppService() {
        gameHashMap = new HashMap<Integer, Integer>();
    }
}
