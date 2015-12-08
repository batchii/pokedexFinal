import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* Processing CSV File
 * For pokemon_form_generations.csv
 * Edits such that each pokemon is associated with the generation that it emerged from,
 * NOT every single generation that it has been in.
 */

public class processCSVForms {
	
	public static void main(String[] args) {
		processCSVForms obj = new processCSVForms();
		obj.run();
	}

	public void run() {
		String csvFile = "pokemon_form_generations.csv";
        String newcsvFile = "edited_pokemon_form_generations.csv";
		BufferedReader br = null;
        BufferedWriter bw = null;
        FileWriter fw = null;
		String line = "";
		String cvsSplitBy = ",";
        
        try {
            
            br = new BufferedReader(new FileReader(csvFile));
            fw = new FileWriter(newcsvFile);
            bw = new BufferedWriter(fw);
            int generation_number = 100; //greater than max gen
            int pokedex_number = 0; //no pokemon with #0
            while ((line = br.readLine()) != null) {
                System.out.println(line);
                if (line.equals("pokemon_form_id,generation_id")) {
                    continue;
                }
                String[] pokemon_whole_line = line.split(cvsSplitBy);
                System.out.println(pokemon_whole_line[0]);
                int dex_temp = Integer.parseInt(pokemon_whole_line[0]);
                int temp = Integer.parseInt(pokemon_whole_line[1]);
                
                
                if (generation_number > temp || pokedex_number != dex_temp) {
                    generation_number = temp;
                    pokedex_number = dex_temp;
                    //bw.write(line + "\n");
                    fw.append(pokemon_whole_line[0]);
                    fw.append(",");
                    fw.append(pokemon_whole_line[1]);
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
