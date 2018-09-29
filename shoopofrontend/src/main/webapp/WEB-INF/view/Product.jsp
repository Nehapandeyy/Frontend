<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h2 align="center">Add Product</h2><hr>
<spring:form action="${pageContext.request.contextPath}/addProduct" modelAttribute="prod" method="POST">
<div class="form-group">
<c:if test="${not empty prod.productName}">
<label for="pid">Product ID:</label>
<spring:input type="text" path="productID" class="form-control" id="pid"  readonly="true" disabled="true"/>
<spring:hidden path="productID"/>
</c:if>
</div>
<div class="form-group">
<label for="pName">Product Name:</label>
 <spring:input type="text" class="form-control" id="pname" path="productName"/>
 </div>
 <div class="form-group">
 <label for="pdescription">Product Description:</label>
<spring:input type="text" class="form-control" id="pdesc" path="productDescription"/>
</div>
 <div class="form-group">
 <label for="Pprice">Product price:</label>
<spring:input type="number" class="form-control" id="pprice" path="price"/>
</div>
<div class="form-group">
 <label for="Pquantity">Product quantity:</label>
<spring:input type="number" class="form-control" id="pquantity" path="quantity"/>
</div>

<c:if test="${empty prod.productName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty prod.productName}"><input type="submit" value="Update"/></c:if>


 
 
 <spring:select path="categoryId">
<c:forEach items="${categoryList}" var="cat">
 <option value="${cat.categoryId}" >${cat.categoryName}</option>
    </c:forEach>
  </spring:select>
 
</spring:form>
</div>

<c:if test="${not empty productList}">

<table class="table table-hover" >
 <thead>
<tr><th>ProductId</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Price</th>
<th>Product Quantity</th>
<th>Edit</th>
<th>delete</th>
</tr>
</thead>
<c:forEach items="${productList}" var="pro">
<tbody>
<tr>
<td>${pro.productID}</td>
<td>${pro.productName}</td>
<td>${pro.productDescription}</td>
<td>${pro.price}</td>
<td>${pro.quantity}</td>

<td><a href="editProduct/${pro.productID}">Edit</a></td>

<td><a href="deleteProduct/${pro.productID}">delete</a></td>
</tr>
</tbody>
</c:forEach>
</table>

</c:if>

</body>
</html>
