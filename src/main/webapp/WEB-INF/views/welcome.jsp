<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<style>
#landing-header {
    z-index: 1;
    position: relative;
    text-align: center;
    padding-top: 40vh;
}

.slideshow {
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    z-index: 0;
    list-style: none;
    margin: 0;
    padding: 0;
}

.slideshow li {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat: no-repeat;
    opacity: 0;
    z-index: 0;
    animation: imageAnimation 50s linear infinite;
}

.slideshow li:nth-child(1) {
    background-image: url(https://www.ccn.com/wp-content/uploads/2017/09/listhotel-buriram.jpg)
}

.slideshow li:nth-child(2) {
    background-image: url(https://www.ccn.com/wp-content/uploads/2017/09/listhotel-buriram.jpg);
    animation-delay: 10s;
}

.slideshow li:nth-child(3) {
    background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/12/e2/82/62/harris-vertu-hotel-harmoni.jpg);
    animation-delay: 20s;
}

.slideshow li:nth-child(4) {
    background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/12/e2/82/62/harris-vertu-hotel-harmoni.jpg);
    animation-delay: 30s;
}

.slideshow li:nth-child(5) {
    background-image: url(http://i.imgur.com/TVGe0Ef.jpg);
    animation-delay: 40s;
}

@keyframes imageAnimation {
    0% {
        opacity: 0;
        animation-timing-function: ease-in;
    }

    10% {
        opacity: 1;
        animation-timing-function: ease-out;
    }

    20% {
        opacity: 1
    }

    30% {
        opacity: 0
    }
}

.no-cssanimations .slideshow li {
    opacity: 1;
}
</style>
</head>
<body>
	<div id="landing-header">
		<h1>Welcome to Hotels!</h1>
		<a href="/myapp/hotels" class="btn btn-lg btn-success">View All
			Hotels</a>
	</div>

	<ul class="slideshow">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</body>
</html>