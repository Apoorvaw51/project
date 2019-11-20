package com.demo.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.demo.entity.ProductList;
import com.demo.service.ProductService;


@Controller
public class ProductListController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(path="productlist.demo", method=RequestMethod.POST)
	public String show(ProductList productList, @RequestParam("productPic") MultipartFile m)
	{
		System.out.println(m.getOriginalFilename());
		String path = "d:/uploadproducts/";
		String finalpath = path + m.getOriginalFilename();
		try {
			m.transferTo(new File(finalpath));
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		
		productList.setProductPicName(m.getOriginalFilename());
		productService.show(productList);
		return  "confirmation.jsp";
	}
}


