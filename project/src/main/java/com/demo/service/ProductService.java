package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entity.ProductList;
import com.demo.repository.ProductListRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductListRepository productListRepository;

	public void show(ProductList productList)
	{
		
		productListRepository.display(productList);
	}
}
