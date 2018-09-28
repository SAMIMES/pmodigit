package mapper;



import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;

import com.opencsv.CSVReader;

import dao.ProjectImplDao;
import entity.Project;

public class CSVMapper {

    public static List<String> readCustomers(ServletContext context) throws IOException {

        InputStream is = context.getResourceAsStream("/WEB-INF/ptitle.csv");
        
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
    
    
    public static List<String> readBugs(ServletContext context) throws IOException {

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
    
    public static void addCSVList() throws IOException{
    	
    	ProjectImplDao projectDao = new ProjectImplDao();
    	
    	List<Project> list_projets = projectDao.findAll();
    	List<String> list_csv = new ArrayList<>();
    	FileWriter pw = new FileWriter("WebContent/WEB-INF/customers.csv",true);
    	
    	  try(
    		Reader reader = Files.newBufferedReader(Paths.get("WebContent/WEB-INF/customers.csv"));
           CSVReader csvReader = new CSVReader(reader); 
    ){
    		  String[] nextRecord;
    		  while ((nextRecord = csvReader.readNext()) != null) {
    			  for(String e: nextRecord){
    				  list_csv.add(e);
    			  }
    		  }
    		  
    	  }
           
          
        	   for(Project project:list_projets){
        		   int i =0;
        		   for(String check: list_csv){  
        			   if(project.getProject_title().equals(check)){
        				   	i++;
        			   }
        		
        	   }
        			if(i == 0 ){
        				pw.append(project.getProject_title());
        			    pw.append(",");
        			}
        			
           }
        	   pw.flush();
               pw.close(); 
    	
    /*    FileWriter pw = new FileWriter("/WEB-INF/customers.csv",true);

   
            pw.append("SAMI MESKAOUI");
            pw.append(",");
            pw.append("\n");
       
            pw.flush();
            pw.close(); */
    }
    
   /* public static void main(String[] args) throws IOException {
    	
    	CSVMapper.printCustomerList();
    	
		
	} */
}