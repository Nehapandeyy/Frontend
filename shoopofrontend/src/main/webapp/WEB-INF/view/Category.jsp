<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>


<center><h2>Category page</h2></center>
<br>
<spring:form action="${pageContext.request.contextPath}/addCategory" modelAttribute="cate" method="post">
<c:if test="${not empty cate.categoryName}">
CategoryId<spring:input type="text" path="categoryId" readonly="true" disabled="true"/>
<spring:hidden path="categoryId"/>
</c:if>

Category Name : <spring:input type="text" path="categoryName"/>
Category Description : <spring:input type="text" path="categoryDescription"/><br>
<c:if test="${empty cate.categoryName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty cate.categoryName}"><input type="submit" value="Update"/></c:if>
</spring:form>



<c:if test="${not empty categoryList}">

<table border="1">
<tr><td>CategoryId</td>
<td>CategoryName</td>
<td>CategoryDesc</td>

<td>Edit</td>
<td>Delete</td>

</tr>
<c:forEach items="${categoryList}" var="cat">
<tr>
<td>${cat.categoryId}</td>
<td>${cat.categoryName}</td>
<td>${cat.categoryDescription}</td>

<td><a href="editCategory/${cat.categoryId}">Edit</a></td>

<td><a href="deleteCategory/${cat.categoryId}">delete</a></td>



</tr>


</c:forEach>
</table>
</c:if> 




</body>
</html>`