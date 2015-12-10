package database;

/**
 * Created by ubuntu on 12/10/15.
 */
public class AllPokemoneNeedAHeldToEvolveDTO {

    private String pokemon;

    private String heldItem;

    public String getPokemon() {
        return pokemon;
    }

    public void setPokemon(String pokemon) {
        this.pokemon = pokemon;
    }

    public String getHeldItem() {
        return heldItem;
    }

    public void setHeldItem(String heldItem) {
        this.heldItem = heldItem;
    }
}
