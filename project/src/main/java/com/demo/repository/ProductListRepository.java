package com.demo.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.entity.ProductList;

@Repository
public class ProductListRepository {
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public void display(ProductList productList){
	 entityManager.persist(productList);
	}
}
