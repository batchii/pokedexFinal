import com.google.gson.Gson;
import database.*;

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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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
            String sql = "Call pokemonMoreThanOneEvolution(\"" + type + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                PokemonMoreThanOneEvolutionDTO result = new PokemonMoreThanOneEvolutionDTO();
                //Retrieve by column name
                result.setIdentifier(rs.getString("Pokemon"));
                result.setType(rs.getString("typeOne"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<GetPokemonWithWeightAndTypeDTO> getPokemonWithWeightAndType(Integer weight, String type) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GetPokemonWithWeightAndTypeDTO> toReturn = new LinkedList<GetPokemonWithWeightAndTypeDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getPokemonWithWeightAndType(\"" + weight + "\", \"" + type + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GetPokemonWithWeightAndTypeDTO result = new GetPokemonWithWeightAndTypeDTO();
                //Retrieve by column name
                result.setId(rs.getInt("id"));
                result.setPokemon(rs.getString("Pokemon"));
                result.setType(rs.getString("Type"));
                result.setWeight(rs.getInt("weight"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can doy
        }
        return toReturn;
    }

    public List<GetTypesOfPokesThatCanUseMoveDTO> getTypesOfPokesThatCanUseMove(String move) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GetTypesOfPokesThatCanUseMoveDTO> toReturn = new LinkedList<GetTypesOfPokesThatCanUseMoveDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getTypesOfPokesThatCanUseMove(\"" + move + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GetTypesOfPokesThatCanUseMoveDTO result = new GetTypesOfPokesThatCanUseMoveDTO();
                //Retrieve by column name
                result.setIdentifier(rs.getString("identifier"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }
    public List<GetPokesThatCanUseMoveDTO> getPokesThatCanUseMove(String move) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GetPokesThatCanUseMoveDTO> toReturn = new LinkedList<GetPokesThatCanUseMoveDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getPokesThatCanUseMove(\"" + move + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GetPokesThatCanUseMoveDTO result = new GetPokesThatCanUseMoveDTO();
                //Retrieve by column name
                result.setIdentifier(rs.getString("Pokemon"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
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

    public List<GenerationUniquePokemonDTO> generationUniquePokemon(String gen) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GenerationUniquePokemonDTO> toReturn = new LinkedList<GenerationUniquePokemonDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call generationUniquePokemon(\"" + gen + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GenerationUniquePokemonDTO result = new GenerationUniquePokemonDTO();
                //Retrieve by column name
                result.setIdentifier(rs.getString("identifier"));
                result.setId(rs.getInt("id"));
                result.setUniquePokemon(rs.getInt("UniquePokemon"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<NumUniquePokemonByTypeDTO> numUniquePokemonByType(String type) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<NumUniquePokemonByTypeDTO> toReturn = new LinkedList<NumUniquePokemonByTypeDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call numUniquePokemonByType(\"" + type + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                NumUniquePokemonByTypeDTO result = new NumUniquePokemonByTypeDTO();
                //Retrieve by column name
                result.setSearchType(rs.getString("SearchType"));
                result.setUniquePokemon(rs.getInt("UniquePokemon"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<GetPokemonWithOneTypeDTO> getPokemonWithOneType(String type) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<GetPokemonWithOneTypeDTO> toReturn = new LinkedList<GetPokemonWithOneTypeDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call getPokemonWithOneType(\"" + type + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                GetPokemonWithOneTypeDTO result = new GetPokemonWithOneTypeDTO();
                //Retrieve by column name
                result.setId(rs.getInt("id"));
                result.setPokemon(rs.getString("pokemon"));
                result.setTypeOne(rs.getString("typeOne"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<AllPokemonNeedAHeldToEvolveDTO> allPokemonNeedAHeldToEvolve(String heldItem) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<AllPokemonNeedAHeldToEvolveDTO> toReturn = new LinkedList<AllPokemonNeedAHeldToEvolveDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call allPokemonNeedAHeldToEvolve(\"" + heldItem + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                AllPokemonNeedAHeldToEvolveDTO result = new AllPokemonNeedAHeldToEvolveDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("Pokemon"));
                result.setHeldItem(rs.getString("HeldItem"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<AllPokemonNeedATriggerToEvolveDTO> allPokemonNeedATriggerToEvolve(String triggerItem) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<AllPokemonNeedATriggerToEvolveDTO> toReturn = new LinkedList<AllPokemonNeedATriggerToEvolveDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call allPokemonNeedATriggerToEvolve(\"" + triggerItem + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                AllPokemonNeedATriggerToEvolveDTO result = new AllPokemonNeedATriggerToEvolveDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("Pokemon"));
                result.setTriggerItem(rs.getString("HeldItem"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
        }
        return toReturn;
    }

    public List<PokemonEvolutionChainDTO> pokemonEvolutionChain(String pokemon) {
        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        Statement stmt = null;
        List<PokemonEvolutionChainDTO> toReturn = new LinkedList<PokemonEvolutionChainDTO>();
        try {
            stmt = conn.createStatement();
            String sql = "Call pokemonEvolutionChain(\"" + pokemon + "\" );";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                PokemonEvolutionChainDTO result = new PokemonEvolutionChainDTO();
                //Retrieve by column name
                result.setPokemon(rs.getString("Pokemon"));
                toReturn.add(result);
            }
            //STEP 6: Clean-up environment
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            //finally block used to close resources
            try {
                if (stmt != null)
                    stmt.close();
            } catch (SQLException se2) {
            }// nothing we can do
            return toReturn;
        }
    }


    public static class AppServiceException extends Exception {
        public AppServiceException (String message, Throwable cause) {super(message, cause);};
    }
}
