<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Order</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	.accordion {
		width: 80%;
		margin: auto;
	}
	h1{
		margin-left: 120px;
	}
</style>
</head>
<body>
<h1> Your Booking </h1>
<div id="accordion" class="accordion">
<c:if test="${requestScope.bookings!= null}">
<c:forEach var="booking" items="${requestScope.bookings}">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#${booking.getId()}" aria-expanded="true" aria-controls="collapseOne">
          ${booking.getHotelName()}
        </button>
      </h5>
    </div>

    <div id="${booking.getId()}" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
      	<li>First Name : ${booking.getFirstName()}</li>
      	<li>Last Name : ${booking.getLastName()}</li>
      	<li>Date : ${booking.getDate()}</li>
      	<li>Contact Phone : ${booking.getPhone()}</li>
      </div>
    </div>
  </div>
  </c:forEach>
  </c:if>
</div>
</body>
</html>