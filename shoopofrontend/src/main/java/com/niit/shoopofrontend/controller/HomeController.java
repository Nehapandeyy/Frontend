package com.niit.shoopofrontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shopoo.dao.CategoryDao;
import com.niit.shopoo.dao.ProductDao;
import com.niit.shopoo.model.Category;
import com.niit.shopoo.model.Customer;
import com.niit.shopoo.model.Product;

@Controller
public class HomeController {
    @Autowired
    private Category category;
    @Autowired
    private Customer customer;
    
    @Autowired
    private CategoryDao categoryDao; 
    
    @Autowired
    private Product product;
    
    @Autowired
    private ProductDao productDao;
    
    @RequestMapping("/")
    public String routpage()
    {
    	return "Index";
    }
    @RequestMapping("/Index")
    public String homepage()
    {
    	return "Index";
    }
    
    @RequestMapping("/login")
    public String SignInpage()
    {
    	return "login";
    }
    @RequestMapping("/SignUp")
    public String SignUppage(Model model)
    {
    	 model.addAttribute("custObj",customer);
    	return "Signup";
    }
    
    

@RequestMapping("/Category")
public String categoryPage(Model model)
{ 
	List<Category> allCategories= categoryDao.getAllCategories();
        model.addAttribute("cate",category);
        model.addAttribute("categoryList",allCategories);
        return "Category"; 
}
@RequestMapping("/Product")
public String productPage(Model model)
{ 
	List<Product> allProducts= productDao.getAllProduct();
	List<Category> allCategories= categoryDao.getAllCategories();
	
	
	 
        model.addAttribute("prod",product);
        model.addAttribute("productList",allProducts);
        model.addAttribute("categoryList",allCategories);
        return "Product";
}
}