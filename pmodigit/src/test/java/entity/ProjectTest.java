package entity;

import static org.junit.Assert.*;

import org.junit.Test;

import entity.Project;

public class ProjectTest {

	@Test
	public void test() {
		
		Project p =  new Project();
		p.setProject_id("P1");
		p.setProject_title("title1");
		p.setCustomer("EDF");
		assertEquals("P1", p.getProject_id());
		assertEquals("tit", p.getProject_title());
		assertEquals("EDF", p.getCustomer());
	}

}
