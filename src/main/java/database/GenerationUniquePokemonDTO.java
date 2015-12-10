package database;

/**
 * Created by ubuntu on 12/10/15.
 */
public class GenerationUniquePokemonDTO {

    private int id;

    private String identifier;

    private int uniquePokemon;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public int getUniquePokemon() {
        return uniquePokemon;
    }

    public void setUniquePokemon(int uniquePokemon) {
        this.uniquePokemon = uniquePokemon;
    }
}
