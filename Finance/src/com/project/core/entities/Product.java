package com.project.core.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component
@Scope(scopeName="prototype")
@Entity(name="product")
@Table(name="product")
public class Product {
	@Id
	@Column(name="PRODUCTID")
	private int productId;
	@Column(name="PRODUCTNAME")
	private String productName;
	@Column(name="PRODUCTDESCRIPTION")
	private String productDescription;
	@Column(name="PRODUCTPRICE")
	private int productPrice;
	//@Column(name="PRODUCTIMAGE")
	//private Multipart productImage;
	public Product(int productId, String productName, String productDescription, int productPrice) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
	}
	public Product() {
		super();
	}
	
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
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", productDescription="
				+ productDescription + ", productPrice=" + productPrice + "]";
	}
}	