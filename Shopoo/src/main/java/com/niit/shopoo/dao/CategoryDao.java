package com.niit.shopoo.dao;

import java.util.List;

import com.niit.shopoo.model.Category;



public interface CategoryDao {
	public boolean addCategory(Category category);
	public boolean deleteCategory(int categoryId);
	public boolean updateCategory(Category category);
	public Category getCategoryById(int categoryId);
	public List<Category> getAllCategories();
	
}


	
	
	

