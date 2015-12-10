package database;

/**
 * Created by ubuntu on 12/10/15.
 */
public class PokemonMoreThanOneEvolutionDTO {

    private String pokemon;

    private String typeOne;

    public String getIdentifier() {
        return pokemon;
    }

    public void setIdentifier(String identifier) {
        this.pokemon = identifier;
    }

    public String getType() {
        return typeOne;
    }

    public void setType(String type) {
        this.typeOne = type;
    }
}
