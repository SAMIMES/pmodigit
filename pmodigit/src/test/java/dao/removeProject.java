package dao;
import static org.junit.Assert.*;

import org.junit.Test;

import controller.loginServ;
import entity.Project;
public class removeProject {
	@Test
	public void test() {
		
		ProjectImplDao pdao = new ProjectImplDao();
		Project project  = pdao.findOne("samiiiiron");
		
		pdao.remove("samiiiiron");
		
		Project project1  = pdao.findOne("samiiiiron");
		
		assertEquals(null, project1);
	}
}
