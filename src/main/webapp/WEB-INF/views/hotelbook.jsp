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
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">Hotels</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<h1 style="text-align: center">Book Hotel
				${requestScope.hotel.getHotelName()}</h1>
			<div style="width: 30%; margin: 30px auto;">
				<form action="/myapp/hotelbook.htm" method="post">
					<div class="form-group">
						<input class="form-control" name="hotelName"
							value="${requestScope.hotel.getHotelName()}" type="text"
							placeholder="${requestScope.hotel.getHotelName()}"
							readonly="true">
					</div>
					<div class="form-group">
						<input class="form-control" name="firstName" type="text"
							placeholder="First Name" required>
					</div>
					<div class="form-group">
						<input class="form-control" name="lastName" type="text"
							placeholder="Last Name" required>
					</div>
					<div class="form-group">
						<input class="form-control" name="phone" type="text"
							placeholder="phone" pattern="[0-9]{10}" required>
					</div>
					<div class="form-group">
						<input class="form-control" name="date" type="date"
							placeholder="date" required>
					</div>
					<div class="form-group">
						<button class="btn btn-lg btn-primary btn-block">Book</button>
					</div>
				</form>
				<a href="/myapp/hotels">Go Back</a>
			</div>
		</div>
	</div>
</body>
</html>
