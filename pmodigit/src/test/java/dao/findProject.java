package dao;

import java.io.File;
import java.io.IOException;

import entity.Item;
import entity.Project;
import entity.ProjectReview;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;


public class findProject {
	

	private static void excelWritingwriting(File file,ProjectReview pr) throws WriteException, IOException, BiffException {
      
		
		Workbook aWorkBook = Workbook.getWorkbook(file);
        WritableWorkbook aCopy = Workbook.createWorkbook(file, aWorkBook);

        WritableSheet aCopySheet = aCopy.getSheet(0);
     
        	int  i=42;
        	for(Item item: pr.getItems()){
        		
        			if(item.getDomain_name().equals("Scope")){
        			//grade	
        			Label grades =  new Label(2,i,item.getGrade());
        		    aCopySheet.addCell(grades);
        		    //comment
        		    Label elmts =  new Label(1,i,item.getItem());		
        		    aCopySheet.addCell(elmts);
        		    i++;
   
        		    
        			}
        	
        }



        

       // aCopySheet.addCell(anotherWritableCel2);

        aCopy.write();
        aCopy.close();

    }
	/* private static void create() throws IOException, WriteException {

	        WritableWorkbook writableWorkbook = Workbook.createWorkbook(new File("WebContent/WEB-INF/firstexcel.xls"));
	        writableWorkbook.createSheet("WebConte",0);

	        writableWorkbook.write();
	        writableWorkbook.close();
	    } */
	
public static void main(String[] args) {
	
	
	PrImplDao prdao = new PrImplDao();
	ProjectReview pr = prdao.findOne((long) 2454);
	System.out.println(pr.getProjet().getProject_title());
	/* ProjectImplDao dao = new ProjectImplDao();
	
	Project project = dao.findOne("samiiiiron");
	
	System.out.println(project.getCustomer());  */
	
    File file=new File("WebContent/WEB-INF/Template.xlsm");
    
    try {
		excelWritingwriting(file,pr);
	} catch (WriteException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (BiffException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   /* if(!file.exists())
    {
        try {
            create();
            excelWritingwriting();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (WriteException e) {
            e.printStackTrace();
        } catch (BiffException e) {
            e.printStackTrace();
        }
    }
    try {
        excelWritingwriting();
    } catch (WriteException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    } catch (BiffException e) {
        e.printStackTrace();
    }
}
*/
}

}