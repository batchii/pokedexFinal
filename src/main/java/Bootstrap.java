import static spark.Spark.*;

import com.j256.ormlite.jdbc.JdbcConnectionSource;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;

/**
 * Created by ubuntu on 12/8/15.
 */
public class Bootstrap {
    public static final String IP_ADDRESS = "localhost";
    public static final int PORT = 8080;

    private static final Logger logger = LoggerFactory.getLogger(Bootstrap.class);

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/pokedex";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "1234";

    public static void main(String[] args) throws Exception {
        //Specify the IP address and Port at which the server should be run
        ipAddress(IP_ADDRESS);
        port(PORT);

        //Specify the sub-directory from which to serve static resources (like html and css)
        staticFileLocation("/public");

        AppService model = new AppService();
        new AppController(model);

//        String databaseUrl = "jdbc:mysql://localhost:3306/pokedex";
//
//        ConnectionSource connectionSource = new JdbcConnectionSource(databaseUrl);
//        ((JdbcConnectionSource)connectionSource).setUsername("root");
//        ((JdbcConnectionSource)connectionSource).setPassword("1234");



    }
}
