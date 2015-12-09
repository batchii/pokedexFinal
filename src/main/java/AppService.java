import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import database.AbilitiesByGenerationDTO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;

import static spark.Spark.*;
import java.sql.*;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by ubuntu on 12/8/15.
 */
public class AppService {

    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/pokedex";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "1234";

    private static final Gson gson = new Gson();

    private Connection conn = null;

    public AppService() {
        //STEP 2: Register JDBC driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //STEP 3: Open a connection
            //  Database credential
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException se) {
            //Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        }



    }

    public List<AbilitiesByGenerationDTO> getAbilitiesByGeneration(String abilityName){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<AbilitiesByGenerationDTO> resultList = new LinkedList<AbilitiesByGenerationDTO>();
        try {
            stmt = conn.createStatement();
            String sql;
            sql = "CALL showAbilitiesByGeneration(\"" + abilityName + "\") ";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                AbilitiesByGenerationDTO result = new AbilitiesByGenerationDTO();
                //Retrieve by column name
                result.setGenerationID(rs.getInt("generation_id")) ;
                result.setIdentifier(rs.getString("identifier"));
                result.setNumUnique(rs.getInt("numUnique"));
                resultList.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }
        return resultList;

    }


    public static class AppServiceException extends Exception {
        public AppServiceException (String message, Throwable cause) {super(message, cause);};
    }
}
