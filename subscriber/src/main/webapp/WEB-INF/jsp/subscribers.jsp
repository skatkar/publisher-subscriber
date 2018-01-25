<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alerts Summary</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="wrapper">
		<center>
		<h1>
			<b>Alerts Summary</b>
		</h1>
		<h2>Summary of alerts and their subscribers</h2>
		</center>

		<c:if test="${empty objectsList}">
			<div class="table">
				<div class="row header">
					<div class="cell">Alert date</div>
					<div class="cell">Type</div>
					<div class="cell">Description</div>
				</div>
				<div class="row">
					<div class="cell" data-title="Alert date"></div>
					<div class="cell" data-title="Type"></div>
					<div class="cell" data-title="Description"></div>
				</div>
				<div class="row">
					<div class="cell" data-title="Alert date"></div>
					<div class="cell" data-title="Type"></div>
					<div class="cell" data-title="Description"></div>
				</div>
				<div class="row">
					<div class="cell" data-title="Alert date">No updates available yet for any subscriber</div>
					<div class="cell" data-title="Type"></div>
					<div class="cell" data-title="Description"></div>
				</div>
				<div class="row">
					<div class="cell" data-title="Alert date"></div>
					<div class="cell" data-title="Type"></div>
					<div class="cell" data-title="Description"></div>
				</div>
				<div class="row">
					<div class="cell" data-title="Alert date"></div>
					<div class="cell" data-title="Type"></div>
					<div class="cell" data-title="Description"></div>
				</div>
			</div>
		</c:if>

		<c:if test="${not empty objectsList}">
			<c:set var="count" value="-1" scope="page" />
			<c:forEach items="${objectsList}" var="objects">
				<div class="table">
					<c:set var="count" value="${count + 1}" scope="page" />
					<c:if test="${count eq 0}">
						<div class="row header">
							<div class="cell">
								<c:out value="${subscriberList[count]}" />
							</div>
							<div class="cell"></div>
							<div class="cell"></div>
						</div>
						<div class="row header">
							<div class="cell">Alert date</div>
							<div class="cell">Type</div>
							<div class="cell">Description</div>
						</div>
					</c:if>
					<c:if test="${count eq 1}">
						<div class="row header green">
							<div class="cell">
								<c:out value="${subscriberList[count]}" />
							</div>
							<div class="cell"></div>
							<div class="cell"></div>
						</div>
						<div class="row header green">
							<div class="cell">Alert date</div>
							<div class="cell">Type</div>
							<div class="cell">Description</div>
						</div>
					</c:if>
					<c:if test="${count eq 2}">
						<div class="row header blue">
							<div class="cell">
								<c:out value="${subscriberList[count]}" />
							</div>
							<div class="cell"></div>
							<div class="cell"></div>
						</div>
						<div class="row header blue">
							<div class="cell">Alert date</div>
							<div class="cell">Type</div>
							<div class="cell">Description</div>
						</div>
					</c:if>

					<c:forEach items="${objects}" var="alertsVo">
						<div class="row">
							<div class="cell" data-title="Alert date">${alertsVo.alertDate}</div>
							<div class="cell" data-title="Type">${alertsVo.type}</div>
							<div class="cell" data-title="Description">${alertsVo.description}</div>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>