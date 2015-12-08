import static spark.Spark.*;

import com.j256.ormlite.jdbc.JdbcConnectionSource;
import com.j256.ormlite.support.ConnectionSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by ubuntu on 12/8/15.
 */
public class Bootstrap {
    public static final String IP_ADDRESS = "localhost";
    public static final int PORT = 8080;

    private static final Logger logger = LoggerFactory.getLogger(Bootstrap.class);

    public static void main(String[] args) throws Exception {
        //Check if the database file exists in the current directory. Abort if not
//        DataSource dataSource = configureDataSource();
//        if (dataSource == null) {
//            System.out.printf("Could not find todo.db in the current directory (%s). Terminating\n",
//                    Paths.get(".").toAbsolutePath().normalize());
//            System.exit(1);
//        }

        //3306

        String databaseUrl = "jdbc:mysql://localhost:3306/pokedex";

        ConnectionSource connectionSource = new JdbcConnectionSource(databaseUrl);
        ((JdbcConnectionSource)connectionSource).setUsername("root");
        ((JdbcConnectionSource)connectionSource).setPassword("1234");

        //Specify the IP address and Port at which the server should be run
        ipAddress(IP_ADDRESS);
        port(PORT);

        //Specify the sub-directory from which to serve static resources (like html and css)
        staticFileLocation("/public");

        //Create the model instance and then configure and start the web service
        //try {
        AppService model = new AppService();
        new AppController(model);
//        } catch (GameService.GameServiceException ex) {
//            logger.error("Failed to create a TodoService instance. Aborting");
//        }
    }
}
