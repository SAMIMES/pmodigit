package mapper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import dao.PrImplDao;
import entity.Item;
import entity.ProjectReview;

public class ReadWriteExcelFile {
	
	public static void readXLSFile() throws IOException
	{
		InputStream ExcelFileToRead = new FileInputStream("C:/Test.xls");
		HSSFWorkbook wb = new HSSFWorkbook(ExcelFileToRead);

		HSSFSheet sheet=wb.getSheetAt(0);
		HSSFRow row; 
		HSSFCell cell;

		Iterator rows = sheet.rowIterator();

		while (rows.hasNext())
		{
			row=(HSSFRow) rows.next();
			Iterator cells = row.cellIterator();
			
			while (cells.hasNext())
			{
				cell=(HSSFCell) cells.next();
		
				if (cell.getCellType() == HSSFCell.CELL_TYPE_STRING)
				{
					System.out.print(cell.getStringCellValue()+" ");
				}
				else if(cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC)
				{
					System.out.print(cell.getNumericCellValue()+" ");
				}
				else
				{
					//U Can Handel Boolean, Formula, Errors
				}
			}
			System.out.println();
		}
	
	}
	
	public static void writeXLSFile() throws IOException {
		
		String excelFileName = "C:/Test.xls";//name of excel file

		String sheetName = "Sheet1";//name of sheet

		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet(sheetName) ;

		//iterating r number of rows
		for (int r=0;r < 5; r++ )
		{
			HSSFRow row = sheet.createRow(r);
	
			//iterating c number of columns
			for (int c=0;c < 5; c++ )
			{
				HSSFCell cell = row.createCell(c);
				
				cell.setCellValue("Cell "+r+" "+c);
			}
		}
		
		FileOutputStream fileOut = new FileOutputStream(excelFileName);
		
		//write this workbook to an Outputstream.
		wb.write(fileOut);
		fileOut.flush();
		fileOut.close();
	}
	
	public static void readXLSXFile() throws IOException
	{
		InputStream ExcelFileToRead = new FileInputStream("WebContent/WEB-INF/Template.xlsm");
		XSSFWorkbook  wb = new XSSFWorkbook(ExcelFileToRead);
		
		XSSFWorkbook test = new XSSFWorkbook(); 
		
		XSSFSheet sheet = wb.getSheetAt(0);
		XSSFRow row; 
		XSSFCell cell;

		Iterator rows = sheet.rowIterator();

		while (rows.hasNext())
		{
			row=(XSSFRow) rows.next();
			Iterator cells = row.cellIterator();
			while (cells.hasNext())
			{
				cell=(XSSFCell) cells.next();
		
				if (cell.getCellType() == XSSFCell.CELL_TYPE_STRING)
				{
					System.out.print(cell.getStringCellValue()+" ");
				}
				else if(cell.getCellType() == XSSFCell.CELL_TYPE_NUMERIC)
				{
					System.out.print(cell.getNumericCellValue()+" ");
				}
				else
				{
					//U Can Handel Boolean, Formula, Errors
				}
			}
			System.out.println();
		}
	
	}
	
	public static void writeXLSXFile(String excelFileName, ProjectReview pr) throws IOException {
		
		//String excelFileName = "WebContent/WEB-INF/Template.xlsm";//name of excel file
		 //Read Excel document first
        FileInputStream input_document = new FileInputStream(new File(excelFileName));
		//String sheetName = "Project Review #1";//name of sheet

		XSSFWorkbook wb = new XSSFWorkbook(input_document);
		XSSFSheet sheet = wb.getSheetAt(0) ;
		int  a=42, b = 55,c = 60,d= 65,e=70,f = 82,g=93;
		
		XSSFCell custo = sheet.getRow(3).getCell(2);
		custo.setCellValue(pr.getProjet().getProject_title());
		
		XSSFCell pm = sheet.getRow(4).getCell(2);
		pm.setCellValue(pr.getProjet().getPm());
		
		XSSFCell date = sheet.getRow(5).getCell(2);
		date.setCellValue(pr.getPr_date());
		
		XSSFCell perfo = sheet.getRow(6).getCell(2);
		perfo.setCellValue(pr.getPerformer());
		for(Item item: pr.getItems()){
			if(item.getDomain_name().equals("Scope")){
				
				//XSSFRow row = sheet.getRow(a);
				XSSFCell cellelm = sheet.getRow(a).getCell(1);
				XSSFCell cellgrade = sheet.getRow(a).getCell(2);
				XSSFCell cellcomment = sheet.getRow(a).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				a++;
			}
			
			if(item.getDomain_name().equals("Schedule")){
				
				XSSFCell cellelm = sheet.getRow(b).getCell(1);
				XSSFCell cellgrade = sheet.getRow(b).getCell(2);
				XSSFCell cellcomment = sheet.getRow(b).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				b++;
			}
			
			
			if(item.getDomain_name().equals("Communication")){
				
				XSSFCell cellelm = sheet.getRow(c).getCell(1);
				XSSFCell cellgrade = sheet.getRow(c).getCell(2);
				XSSFCell cellcomment = sheet.getRow(c).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				c++;
			}
			
			
			if(item.getDomain_name().equals("Risk")){
				
				XSSFCell cellelm = sheet.getRow(d).getCell(1);
				XSSFCell cellgrade = sheet.getRow(d).getCell(2);
				XSSFCell cellcomment = sheet.getRow(d).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				d++;
			}
			
			
			if(item.getDomain_name().equals("Quality")){
	
				XSSFCell cellelm = sheet.getRow(e).getCell(1);
				XSSFCell cellgrade = sheet.getRow(e).getCell(2);
				XSSFCell cellcomment = sheet.getRow(e).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
			
				e++;
			}
			
			
			if(item.getDomain_name().equals("Team")){
				
				XSSFCell cellelm = sheet.getRow(f).getCell(1);
				XSSFCell cellgrade = sheet.getRow(f).getCell(2);
				XSSFCell cellcomment = sheet.getRow(f).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				f++;
			}
			
			
			if(item.getDomain_name().equals("Budget")){
		
				XSSFCell cellelm = sheet.getRow(g).getCell(1);
				XSSFCell cellgrade = sheet.getRow(g).getCell(2);
				XSSFCell cellcomment = sheet.getRow(g).getCell(3);
				cellelm.setCellValue(item.getItem());
				cellgrade.setCellValue(item.getGrade());
				cellcomment.setCellValue(item.getComment());
				g++;
			}
		}
		//iterating r number of rows
		/*for (int r=0;r < 5; r++ )
		{
			XSSFRow row = sheet.createRow(r);

			//iterating c number of columns
			for (int c=0;c < 5; c++ )
			{
				XSSFCell cell = row.createCell(c);
	
				cell.setCellValue("Cell "+r+" "+c);
			}
		} */

		FileOutputStream fileOut = new FileOutputStream(excelFileName);

		//write this workbook to an Outputstream.
		wb.write(fileOut);
		fileOut.flush();
		fileOut.close();
	}

	public static void main(String[] args) throws IOException {
		
		//writeXLSFile();
		//readXLSFile();
		PrImplDao prdao = new PrImplDao();
		ProjectReview pr = prdao.findOne((long) 2454);
		writeXLSXFile("WebContent/WEB-INF/Template.xlsm",pr);
		//readXLSXFile();

	}
}
