<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Booking</title>
   <!-- Latest compiled and minified CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
       integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
    <h1 style="text-align:center">Add Your Hotel</h1>
        <div style="width:30%; margin:30px auto;">
            <form action="/myapp/hoteladd.htm" method="post">
                <div class="form-group">
                    <input class="form-control" name="hotelName" type="text" placeholder="hotel name" required>
                </div>
                <div class="form-group">
                    <input class="form-control" name="location" type="text" placeholder="location" required>
                </div>
                <div class="form-group">
                  <input class="form-control" name="image" type="text" placeholder="image" required>
                </div>
                <div class="form-group">
                        <input class="form-control" name="price" type="text" pattern="[0-9]*" placeholder="price" required>
                </div>
                <div class="form-group">
                        <input class="form-control" name="description" type="text" placeholder="description" required>
                </div>
                <div class="form-group">
                    <button class="btn btn-lg btn-primary btn-block">Add Hotel</button>
                </div>
            </form>
        </div>
  </div>
</div>
</body>
</html>
