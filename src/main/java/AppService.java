import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import database.*;
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
            sql = "CALL showAbilitiesByGeneration(\"" + abilityName + "\"); ";
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

    public List<PokemonRegionDTO> pokemonRegion(String pokemon){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<PokemonRegionDTO> toReturn = new LinkedList<PokemonRegionDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call pokemonRegion(\"" + pokemon + "\");";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                PokemonRegionDTO result = new PokemonRegionDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("pokemon")) ;
                result.setRegion(rs.getString("region"));
                toReturn.add(result);
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
        return toReturn;
    }

    public List<PokemonLocationDTO> pokemonLocation(String pokemon){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<PokemonLocationDTO> toReturn = new LinkedList<PokemonLocationDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call pokemonLocation(\"" + pokemon + "\");";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                PokemonLocationDTO result = new PokemonLocationDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("pokemon")) ;
                result.setLocation(rs.getString("location"));
                toReturn.add(result);
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
        return toReturn;
    }

    public List<WhatPokemonHereDTO> whatPokemonHere(String location){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<WhatPokemonHereDTO> toReturn = new LinkedList<WhatPokemonHereDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call whatPokemonHere(\"" + location + "\");";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                WhatPokemonHereDTO result = new WhatPokemonHereDTO();
                //Retrieve by column name
                result.setId(rs.getInt("id"));
                result.setIdentifier(rs.getString("identifier"));
                toReturn.add(result);
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
        return toReturn;
    }

    public List<BestBaseStatByGenDTO> bestBaseStatByGen(int gen){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<BestBaseStatByGenDTO> toReturn = new LinkedList<BestBaseStatByGenDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call bestBaseStatByGen(\"" + gen + "\");";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                BestBaseStatByGenDTO result = new BestBaseStatByGenDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("Pokemon"));
                result.setTotalBaseStat(rs.getInt("TotalBaseStat"));
                toReturn.add(result);
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
        return toReturn;
    }

    public List<GetPokemonWithTwoTypesDTO> getPokemonWithTwoTypes(String typeOne, String typeTwo){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GetPokemonWithTwoTypesDTO> toReturn = new LinkedList<GetPokemonWithTwoTypesDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getPokemonWithTwoTypes(\"" + typeOne + "\", \"" + typeTwo +"\"  );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GetPokemonWithTwoTypesDTO result = new GetPokemonWithTwoTypesDTO();
                //Retrieve by column name
                result.setId(rs.getInt("id"));
                result.setTypeOne(rs.getString("TypeOne"));
                result.setTypeTwo(rs.getString("TypeTwo"));
                result.setIdentifier(rs.getString("identifier"));
                toReturn.add(result);
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
        return toReturn;
    }

    public List<PokemonMoreThanOneEvolutionDTO> pokemonMoreThanOneEvolution(String type){
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<PokemonMoreThanOneEvolutionDTO> toReturn = new LinkedList<PokemonMoreThanOneEvolutionDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getPokemonWithTwoTypes(\"" + type + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                PokemonMoreThanOneEvolutionDTO result = new PokemonMoreThanOneEvolutionDTO();
                //Retrieve by column name
                result.setIdentifier(rs.getString("pokemon"));
                result.setType(rs.getString("typeOne"));
                toReturn.add(result);
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
        return toReturn;
    }









    private ResultSet callDB(String dbCall){
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(dbCall);
            //STEP 6: Clean-up environment
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
        return rs;
    }

    public static class AppServiceException extends Exception {
        public AppServiceException (String message, Throwable cause) {super(message, cause);};
    }
}
