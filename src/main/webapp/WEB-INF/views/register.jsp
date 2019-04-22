<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Booking</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.form-signin {
	max-width: 330px;
	margin: auto;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">Hotels</a>
			</div>
		</div>
	</nav>
	<c:if test="${requestScope.getAlert == 'yes'}">
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>Registration Failed!</strong>
		</div>
	</c:if>
	<div class="text-center">
		<form class="form-signin" action="register" method="POST">
			<h1 id="sign-in-title" class="h3 mb-3 font-weight-normal">
				Please Sign Up</h1>
			<label for="inputUsername" class="sr-only">UserName</label> <input
				class="form-control" type="text" name="userEmail"
				placeholder="Email" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				class="form-control" type="password" name="password"
				placeholder="password" required autofocus>
			<div class="form-group">
				<select class="form-control" name="type" id="type">
					<option>User</option>
					<option>Admin</option>
				</select>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Sign Up</button>
		</form>
	</div>
</body>
</html>
