package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PrImplDao;
import entity.ProjectReview;
import mapper.ReadWriteExcelFile;

/**
 * Servlet implementation class excelPRload
 */
@WebServlet("/loadxls")
public class excelPRload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public excelPRload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String filepath = "C:/Users/SMI16/git/pmodigit/pmodigit/WebContent/WEB-INF/Template.xlsm";
		
		Long id = Long.parseLong(request.getParameter("id"));
		System.out.println(id);
		PrImplDao prdao = new PrImplDao();
		ProjectReview pr = prdao.findOne(id);
		
		ReadWriteExcelFile.writeXLSXFile(filepath,pr);
		
		
		  
		
		//response.setHeader("Content-Disposition", "attachment; filename=sample.xlsm");
		   File downloadFile = new File(filepath);
		 // modifies response
        response.setContentType("application/vnd.ms-excel");
        response.setContentLength((int) downloadFile.length());
         
        // forces download
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", "PROJECT_REVIEW_P_1_0.xlsm");
        response.setHeader(headerKey, headerValue);
		  // obtains response's output stream
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
         
        
     
        
        FileInputStream inStream = new FileInputStream(downloadFile);
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inStream.close();
        outStream.close(); 

	      //response.setContentLength( (int) myfile.length( ) );
		

	      /* OutputStream out = response.getOutputStream();
	      FileInputStream in = new FileInputStream(new File(filepath));
	      byte[] buffer = new byte[4096];
	      int length;
	      while ((length = in.read(buffer)) > 0){
	          out.write(buffer, 0, length);
	      }
	      in.close();
	      out.flush(); */
	  
	  
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
	}

}
