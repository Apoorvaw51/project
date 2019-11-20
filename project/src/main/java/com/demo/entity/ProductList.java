package com.demo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_PRDUCT_LIST")
public class ProductList {
	@Id
	@GeneratedValue
	private int productId;
	private String productName;
	private String productInfo;
	private double amount;
	private String productPicName;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getProductPicName() {
		return productPicName;
	}
	public void setProductPicName(String productPicName) {
		this.productPicName = productPicName;
	}
	
	
}
