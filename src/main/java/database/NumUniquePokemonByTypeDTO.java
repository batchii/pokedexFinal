package database;

/**
 * Created by ubuntu on 12/10/15.
 */
public class NumUniquePokemonByTypeDTO {

    private String searchType;

    private int uniquePokemon;

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public int getUniquePokemon() {
        return uniquePokemon;
    }

    public void setUniquePokemon(int uniquePokemon) {
        this.uniquePokemon = uniquePokemon;
    }
}
