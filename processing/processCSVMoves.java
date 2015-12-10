import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;

/* Processing CSV File
 * For pokemon_form_generations.csv
 * Edits such that each pokemon is associated with the generation that it emerged from,
 * NOT every single generation that it has been in.
 */

public class processCSVMoves {
	
	public static void main(String[] args) {
		processCSVMoves obj = new processCSVMoves();
		obj.run();
	}

	public void run() {
		String csvFile = "old_pokemon_moves.csv";
        String newcsvFile = "pokemon_moves.csv";
		BufferedReader br = null;
        BufferedWriter bw = null;
        FileWriter fw = null;
		String line = "";
		String cvsSplitBy = ",";
        
        HashSet<String> lines = new HashSet<String>();
        
        try {
            br = new BufferedReader(new FileReader(csvFile));
            fw = new FileWriter(newcsvFile);
            bw = new BufferedWriter(fw);
            
            while ((line = br.readLine()) != null) {
                if (lines.add(line)) {
                    System.out.println(line);
                    fw.append(line);
                    fw.append("\n");
                    fw.flush();
                }
            }
            fw.close();
            
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        
        System.out.println("Done");
    }
    
}
