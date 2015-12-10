package database;

/**
 * Created by ubuntu on 12/10/15.
 */
public class GetPokemonWithOneTypeDTO {

    private int id;

    private String pokemon;

    private String typeOne;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPokemon() {
        return pokemon;
    }

    public void setPokemon(String pokemon) {
        this.pokemon = pokemon;
    }

    public String getTypeOne() {
        return typeOne;
    }

    public void setTypeOne(String typeOne) {
        this.typeOne = typeOne;
    }
}
