<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.hotel.myapp.pojo.Hotel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>YelpCamp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<style>
	.thumbnail img {
  width : 100%;
}
/* select caption-full class under thumbnail, space in btw!!! */
.thumbnail .caption-full{
  padding: 9px;
}
.thumbnail{
  padding: 0;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/myapp/hotels">Hotels</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p class="lead">Hotel</p>
				<div class="list-group">
					<li class="list-group-item active">INFO 1</li>
					<li class="list-group-item">INFO 2</li>
					<li class="list-group-item">INFO 3</li>
				</div>
			</div>
			<div class="col-md-9">
				<div class="thumbnail">
					<img class="img-responsive" src="${requestScope.hotel.getImage()}">
					<div class="caption-full">
						<h4 class="pull-right">
							<c:out value="${requestScope.hotel.getPrice()}" />
							/night
						</h4>
						<h4>
							<c:out value="${requestScope.hotel.getHotelName()}" />
						</h4>
						<h4>
							<c:out value="${requestScope.hotel.getLocation()}" />
						</h4>
						<h4>
							<c:out value="${requestScope.hotel.getDescription()}" />
						</h4>
						<c:set var = "user" scope="session" value="${sessionScope.curUser}"/>
						<c:if test="${user != null}">
							<a class="btn btn-info" href="/myapp/hotelbook/?id='${requestScope.hotel.getId()}'">Book</a>
						</c:if>
						<c:if test="${user.getType() == 'Admin'}">
							<a class="btn btn-danger" href="/myapp/hoteldelete/?id='${requestScope.hotel.getId()}'">Delete</a>
							<a class="btn btn-warning" href="/myapp/hotelupdate/?id='${requestScope.hotel.getId()}'">Update</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
