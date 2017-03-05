package com.igor.webservices.beans;

import java.io.Serializable;

public class Guitar implements Serializable {

	private static final long serialVersionUID = -6731235515738736939L;
	
	private int id;
	private String brand;
	private String model;
	private String color;
	private double price;
	private String image;
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
	
	public void setColor(String color) {
		this.color = color;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	public int getId() {
		return id;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public String getModel() {
		return model;
	}
	
	public String getColor() {
		return color;
	}
	
	public double getPrice() {
		return price;
	}
	
	public String getImage() {
		return image;
	}
	
	@Override
	public String toString() {
		return "id:"+id+"--brand:"+brand+"--model:"+model+"--color:"+color+"--price:"+price+"--image:"+image;
	}
}
