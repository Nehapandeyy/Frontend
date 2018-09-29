package com.niit.shoopofrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shopoo.dao.CategoryDao;
import com.niit.shopoo.dao.ProductDao;
import com.niit.shopoo.model.Category;
import com.niit.shopoo.model.Product;


	@Controller
	public class ProductController {

		
				@Autowired
			ProductDao	productDao;
				@Autowired
				Product product;
				@Autowired
				 CategoryDao categoryDao;
				
				
				@RequestMapping(value="/addProduct" , method=RequestMethod.POST)
				public String productAdd(@ModelAttribute("prod") Product product)

         {	
				
					
					if(product.getProductID()==0)
					{
						productDao.addProduct(product);
					}
					else
					{
						productDao.updateProduct(product);
						
					}
					
					return"redirect:/Product";
					
				}
				
				@RequestMapping("/deleteProduct/{id}")
				
				
				  public String productDelete(@PathVariable("id") int productID)
				  {
				productDao.deleteProduct(productID);
				      return "redirect:/Product";
				      
				  }
				
				
				@RequestMapping("/editProduct/{id}")
				
				public String productUpdate(@PathVariable("id") int productId,Model model)
				
				{
					Product productData=productDao.getProductById(productId);
					model.addAttribute("prod",productData);
					List<Product> allProducts= productDao.getAllProduct();
					List<Category> allCategories= categoryDao.getAllCategories();
					model.addAttribute("categoryList",allCategories);
					model.addAttribute("productList" , allProducts);
					return "Product";
				}
	
					
				
		     
				@RequestMapping("getAllProductsBycategory/{categoryId}")
				
				public String getAllProductByCategory(@PathVariable("categoryId")int categoryId,Model model)
				{
					
					List<Product>productL=productDao.getAllProduct();
					model.addAttribute("product",productL);
					return "ShowProduct";
				}
	}c
				
				
	
					
					
				
				