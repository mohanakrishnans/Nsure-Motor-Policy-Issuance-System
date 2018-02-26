package com.kgisl.nsure.quotation.domain;

public class TestDO {
	int id;
	String name;
	
	public TestDO() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public TestDO(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

}
