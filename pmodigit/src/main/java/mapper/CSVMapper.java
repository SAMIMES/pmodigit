package mapper;


import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;

import com.opencsv.CSVReader;

public class CSVMapper {

    public static List<String> readCustomers(ServletContext context) throws IOException {

        InputStream is = context.getResourceAsStream("/WEB-INF/customers.csv");
        
        List<String> customersList = new ArrayList<>();
        
        try (CSVReader reader = new CSVReader(new InputStreamReader(is))) {
            String[] nextLine;
            
            while ((nextLine = reader.readNext()) != null) {

                for (String e : nextLine) {
                   customersList.add(e.trim());
                }
            }
        }
        
        return customersList;
    }
    
    public static List<String> readPM(ServletContext context) throws IOException {

        InputStream is = context.getResourceAsStream("/WEB-INF/customers.csv");
        
        List<String> pmList = new ArrayList<>();
        
        try (CSVReader reader = new CSVReader(new InputStreamReader(is))) {
            String[] nextLine;
            
            while ((nextLine = reader.readNext()) != null) {

                for (String e : nextLine) {
                   pmList.add(e.trim());
                }
            }
        }
        
        return pmList;
    }
}