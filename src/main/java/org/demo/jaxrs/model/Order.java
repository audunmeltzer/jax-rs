package org.demo.jaxrs.model;

public class Order {
	
	private int id;
	private String item;

	public Order() {
	}

	public Order(int id, String item) {
		this();
		this.setId(id);
		this.setItem(item);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

}
