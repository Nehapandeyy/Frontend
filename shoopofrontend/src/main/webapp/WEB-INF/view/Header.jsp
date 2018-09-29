<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Shoopoholic</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Shoopo</a>
   <button class="navbar-toggler" type=button" data-toggle="collapse" data-target="#navbarSupportContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
    <li class="nav-item ">
      <a class="nav-link" href="Index">Home </a>
      </li>
   <li class="nav-item dropdown">
   <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
   Product
   </a>
   <div class="dropdown-menu">
   <c:forEach items="${categoryList}" var="category">
     <a class="dropdown-item" href="getAllProductBycategory/${category.categoryId}">${category.categoryName}</a>
     </c:forEach>
     </div> 
    </li>
     <li class="nav-item">
      <a class="nav-link" href="#">About Us</a>
    </li>
    
    
        <li class="nav-item">
      <a class="nav-link" href="#">Contact Us</a>
    </li> 
    
     
    <li class="nav-item">
      <a class="nav-link" href="login">SignIn</a>
    </li>
    
     <li class="nav-item">
      <a class="nav-link" href="SignUp">Sign Up</a>
    </li> 
 

 
<security:authorize access="isAuthenticated()">
     <li class="nav-item">
      <a class="nav-link" href="logOut">LogOut</a>
    </li> 
    </security:authorize>
    
    <security:authorize access="hasRole('ROLE_ADMIN')">
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Admin
     </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="Category">Add Category</a>
       <div class="dropdown-divider"></div>
       <a class="dropdown-item" href="Product">Product</a>
       <div class="dropdown-divider"></div>
       
           </div>
          </li>
          
          </security:authorize>
      
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         
     </a>
     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
       <a class="dropdown-item" href="Category">Add Category</a>
       <div class="dropdown-divider"></div>
       <a class="dropdown-item" href="Product">Add Product</a>
       <div class="dropdown-divider"></div>
       
           </div>
          </li>
      
       </ul>
       
     </div>
    </nav>
    </body>
    </html>        
          

