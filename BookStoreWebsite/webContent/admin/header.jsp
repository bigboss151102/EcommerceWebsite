<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<div class="row justify-content-center">
	<a href="${pageContext.request.contextPath}">
		<img src="../images/Tin5.png" class="img-fluid"/>
	</a>
</div>
<c:if test="${useremail	 != null}">
	<div class="row justify-content-center">
			<b>Welcome, <c:out value="${sessionScope.useremail}"></c:out> | <a href="logout">Logout   <i class="fas fa-sign-out-alt"></i></a></b> 
			<br/><br/>
	</div>
</c:if>

<nav class="navbar navbar-expand-lg navbar-dark bg-success ">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#topNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse justify-content-center flex-wrap" id="topNavbar">
		<ul class="navbar-nav ">
			<c:if test="${useremail	 == null}">
				<li class="nav-item active mr-5">
					<a href="list_users" class="nav-link"><img alt="" src="../images/users.png"/><br/>Users </a>
				</li>
				<li class="nav-item active mr-5">
					<a  href="list_category" class="nav-link"><img alt="" src="../images/category.png"/><br/>Categories</a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_books" class="nav-link"><img alt="" src="../images/bookstack.png"/><br/>Book</a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_customer" class="nav-link"><img alt="" src="../images/customer.png"/><br/>Customer </a>
				</li>
	
				<li class="nav-item active mr-5">
					<a href="list_order"   class="nav-link"><img alt="" src="../images/order.png"/><br/>Orders</a>
				</li>
				<li class="nav-item active mr-5">
					<a  href="list_review" class="nav-link"><img alt="" src="../images/review.png"/><br/>Reviews</a>
				</li>
			</c:if>
			<c:if test="${useremail != null}">
				
				<li class="nav-item active mr-5">
					<a href="list_users"  class="nav-link"><img alt="" src="../images/users.png"/><br/>Users </a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_category"  class="nav-link"><img alt="" src="../images/category.png"/><br/>Categories</a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_books"  class="nav-link"><img alt="" src="../images/bookstack.png"/><br/>Book</a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_customer"  class="nav-link"><img alt="" src="../images/customer.png"/><br/>Customer </a>
				</li>
	
				<li class="nav-item active mr-5">
					<a href="list_order"  class="nav-link"><img alt="" src="../images/order.png"/><br/>Orders</a>
				</li>
				<li class="nav-item active mr-5">
					<a href="list_review"  class="nav-link"><img alt="" src="../images/review.png"/><br/>Reviews</a>
				</li>
			</c:if>
		</ul>
	</div>
</nav>
</html>