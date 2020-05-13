package com.capstone.test1.logic;

public class Cart {
	private String productName;
	private int price;
	private String category;
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Cart [productName=" + productName + ", price=" + price + ", category=" + category + "]";
	}
	
}
