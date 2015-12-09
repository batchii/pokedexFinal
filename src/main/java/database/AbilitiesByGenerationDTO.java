package database;

/**
 * Created by ubuntu on 12/9/15.
 */
public class AbilitiesByGenerationDTO {

    private int generationID;

    private String identifier;

    private int numUnique;

    public int getGenerationID() {
        return generationID;
    }

    public void setGenerationID(int generationID) {
        this.generationID = generationID;
    }

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public int getNumUnique() {
        return numUnique;
    }

    public void setNumUnique(int numUnique) {
        this.numUnique = numUnique;
    }
}
