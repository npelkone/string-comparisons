import java.io.*;
// import java.util.regex.Matcher;
// import java.util.regex.Pattern;
public class JavaPrograms {
    public static void main (String[] args) {
        String file = "../string-10m.txt";
        String s = null;
        try{

            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while((s = bufferedReader.readLine()) != null) {

                long start = System.nanoTime();

                // regex 1
                // String pattern = "bab{3}";
                // // regex 2
                // String pattern = "bbbba+";

                // // regex 3
                // String pattern = "bbbbb|aaaaa";

                // // regex 4
                // String pattern = "bab{3}|bbbba+";

                // // regex 5
                // String pattern = "(bbbbb|aaaaa)+";

                // Pattern r = Pattern.compile(pattern);
                // Matcher m = r.matcher(s);
                // while (m.find()) {}

                // // --------- concat ---------
                // s.concat("a");

                // // --------- replace/modify ---------
                // s.replace("abba", "CCCC"); 

                // // --------- equals ---------
                // String s2 = s.concat("a");
                // s.equals(s2); 

                // // --------- uppercase ---------
                // s.toUpperCase(); 

                // // --------- strstr ---------
                // s.indexOf("abba"); 

                // // --------- duplicate/copy ---------
                // String duplicate_s = new String(s);

                // // --------- reverse ---------
                // String reverse_s = new StringBuilder(s).reverse().toString();
                
                long end = System.nanoTime();
                long duration = end-start;

                File savefile = new File("times-file.txt");
                FileWriter fr = new FileWriter(savefile,true);
                BufferedWriter br = new BufferedWriter(fr);
                br.write(Long.toString(duration));
                br.write("\n");
                    
                br.close();
                fr.close();
            }
            bufferedReader.close(); 

            
        } 
        catch(FileNotFoundException e) {} 
        catch(IOException i) {}
        
    }
}