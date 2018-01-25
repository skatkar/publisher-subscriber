<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Service feedbacks</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


<link rel="stylesheet" href="css/feedbackstyle.css">


</head>

<body>
	<div id="demo">
		<h1>
			<b>Feedback Summary</b>
		</h1>
		<h2>Summary of service feedbacks submitted by people till date</h2>

		<!-- Responsive table starts here -->
		<!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
		<div class="table-responsive-vertical shadow-z-1">
			<!-- Table starts here -->
			<table id="table" class="table table-hover table-mc-light-blue">
				<thead>
					<tr>
						<th>Sr no.</th>
						<th>Feedback date</th>
						<th>Rating</th>
						<th>Feedback</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty feedbacks}">
						<tr>
							<td data-title="ID">No feedbacks yet</td>
							<td data-title="Name"></td>
							<td data-title="Name"></td>
							<td data-title="Name"></td>
						</tr>
					</c:if>

					<c:if test="${not empty feedbacks}">
						<c:set var="count" value="0" scope="page" />
						<c:forEach items="${feedbacks}" var="feedback">
							<c:set var="count" value="${count + 1}" scope="page" />
							<tr>
								<td data-title="ID"><c:out value="${count}" /></td>
								<td data-title="Name">${feedback.feedbackDate}</td>
								<td data-title="Name">${feedback.rating}</td>
								<td data-title="Name">${feedback.description}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>

	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/feedback.js"></script>

</body>
</html>
