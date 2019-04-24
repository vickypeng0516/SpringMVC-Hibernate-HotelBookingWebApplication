<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
@import
	url('https://fonts.googleapis.com/css?family=Libre+Baskerville:400,700')
	;

@import
	url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;

.row-section {
	float: left;
	width: 100%;
	background: #004080; /* fallback for old browsers */
	background: -webkit-linear-gradient(to bottom, #004080, #0066cc);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to bottom, #004080, #0066cc);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.row-section h2 {
	float: left;
	width: 100%;
	color: #fff;
	margin-bottom: 30px;
	font-size: 14px;
}

.row-section h2 span {
	font-family: 'Libre Baskerville', serif;
	display: block;
	font-size: 45px;
	text-transform: none;
	margin-bottom: 20px;
	margin-top: 30px;
	font-weight: 700;
}

.row-section h2 a {
	color: #d2abce;
}

.row-section .row-block {
	background: #fff;
	padding: 20px;
	margin-bottom: 50px;
}

.row-section .row-block ul {
	margin: 0;
	padding: 0;
}

.row-section .row-block ul li {
	list-style: none;
	margin-bottom: 20px;
}

.row-section .row-block ul li:last-child {
	margin-bottom: 0;
}

.row-section .row-block ul li:hover {
	cursor: grabbing;
}

.row-section .row-block .media {
	border: 1px solid #d5dbdd;
	padding: 5px 20px;
	border-radius: 5px;
	box-shadow: 0px 2px 1px rgba(0, 0, 0, 0.04);
	background: #fff;
}

.row-section .media .media-left img {
	width: 75px;
}

.row-section .media .media-body p {
	padding: 0 15px;
	font-size: 14px;
}

.row-section .media .media-body h4 {
	color: #6b456a;
	font-size: 18px;
	font-weight: 600;
	margin-bottom: 0;
	padding-left: 14px;
	margin-top: 12px;
}

.btn-default {
	background: #6B456A;
	color: #fff;
	border-radius: 30px;
	border: none;
	font-size: 16px;
}

.content-span{
	margin-left: 15px;
}
</style>
<section class="row-section">
	<div class="container">
		<div class="row">
			<h2 class="text-center">
				<span>Manage Booking</span>
		</div>
		<c:if test="${requestScope.bookings != null}">
			<div class="col-md-10 offset-md-1 row-block">
				<ul id="sortable">
					<c:forEach var = "booking" items = "${requestScope.bookings}">
					<li><div class="media">
							<div class="media-left align-self-center">
								<img class="rounded-circle"
									src="https://health.arlingtonva.us/wp-content/uploads/sites/25/2013/12/hotel.jpg">
							</div>
							<div class="media-body">
								<h4>${booking.getHotelName()}</h4>
								<span class="content-span">${booking.getDate()}</span><br>
								<span class="content-span"> ${booking.getFirstName()}</span>
								<span class="content-span">${booking.getLastName()}</span>
								<span class="content-span">${booking.getPhone()}</span>
								<p>For norland produce age wishing. To figure on it spring season up. Her provision acuteness had excellent two why intention. As called mr needed praise at. Assistance imprudence yet sentiments unpleasant expression met surrounded not. Be at talked ye though secure nearer. </p>
							</div>
							<div class="media-right align-self-center">
								<a href="#" class="btn btn-default">Cancel</a>
							</div>
						</div></li>
					</c:forEach>
			</div>
		</c:if>
	</div>
</section>
<script>
	$(function() {
		$("#sortable").sortable();
		$("#sortable").disableSelection();
	});
</script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>