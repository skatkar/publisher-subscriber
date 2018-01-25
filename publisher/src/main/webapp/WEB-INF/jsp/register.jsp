<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Publish events</title>
</head>
<body>
	<p><font face="verdana" color="green"><b>${message}</b></font></p>
	<form method="post" name="user">
        First Name : <input type="text" name="firstName" />
        Last Name : <input type="text" name="lastName" />
        Email address : <input type="text" name="email" />
        CWID : <input type="text" name="cwid" />
        Country : <input type="text" name="country" />
        <input type="submit" />
    </form>

</body>
</html> --%>

<!-- HTML for first page -->
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/favicon.ico" />
<title>Register yourself</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>



<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch'
	href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

<link rel="stylesheet" href="css/style.css">


<script>
function hideAfterSomeTime(hideTime)
{
	// 10000 = 10 seconds. Change it
	window.setTimeout("document.getElementById('short-time-msg').style.display='none'", (hideTime)?hideTime:5000);
}
</script>

<style type="text/css">
legend {
	padding-left: 350px;
}
</style>

</head>

<body>
	<div class="container">
		<!-- <p><font face="verdana" color="green"><b>${message}</b></font></p> -->
		<div class="panel panel-primary" style="margin-top: 2%">
			<div class="panel-heading">Register Now!</div>
			<div class="panel-body">

				<form class="form-horizontal" id="user" method="post" name="user">
					<fieldset>

						<!-- Form Name -->

						<!-- Text input for First name-->

						<div class="form-group">
							<label class="col-md-4 control-label">First Name</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="firstName"
										placeholder="First Name" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input for Last name-->

						<div class="form-group">
							<label class="col-md-4 control-label">Last Name</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="lastName"
										placeholder="Last Name" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input for email-->
						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input name="email"
										placeholder="E-Mail Address" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input for email-->
						<div class="form-group">
							<label class="col-md-4 control-label">Last 4 digits of
								SSN</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input name="ssn"
										placeholder="Last 4 digits of SSN" class="form-control"
										type="text">
								</div>
							</div>
						</div>

						<!-- Text input for address-->

						<div class="form-group">
							<label class="col-md-4 control-label">Address</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input name="address"
										placeholder="Address" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Text input for city-->

						<div class="form-group">
							<label class="col-md-4 control-label">City</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input name="city"
										placeholder="city" class="form-control" type="text">
								</div>
							</div>
						</div>

						<!-- Select Basic -->

						<div class="form-group">
							<label class="col-md-4 control-label">State</label>
							<div class="col-md-4 selectContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-list"></i></span> <select name="state"
										class="form-control selectpicker">
										<option value=" ">Please select your state</option>
										<option>Alabama</option>
										<option>Alaska</option>
										<option>Arizona</option>
										<option>Arkansas</option>
										<option>California</option>
										<option>Colorado</option>
										<option>Connecticut</option>
										<option>Delaware</option>
										<option>District of Columbia</option>
										<option>Florida</option>
										<option>Georgia</option>
										<option>Hawaii</option>
										<option>daho</option>
										<option>Illinois</option>
										<option>Indiana</option>
										<option>Iowa</option>
										<option>Kansas</option>
										<option>Kentucky</option>
										<option>Louisiana</option>
										<option>Maine</option>
										<option>Maryland</option>
										<option>Mass</option>
										<option>Michigan</option>
										<option>Minnesota</option>
										<option>Mississippi</option>
										<option>Missouri</option>
										<option>Montana</option>
										<option>Nebraska</option>
										<option>Nevada</option>
										<option>New Hampshire</option>
										<option>New Jersey</option>
										<option>New Mexico</option>
										<option>New York</option>
										<option>North Carolina</option>
										<option>North Dakota</option>
										<option>Ohio</option>
										<option>Oklahoma</option>
										<option>Oregon</option>
										<option>Pennsylvania</option>
										<option>Rhode Island</option>
										<option>South Carolina</option>
										<option>South Dakota</option>
										<option>Tennessee</option>
										<option>Texas</option>
										<option>Uttah</option>
										<option>Vermont</option>
										<option>Virginia</option>
										<option>Washington</option>
										<option>West Virginia</option>
										<option>Wisconsin</option>
										<option>Wyoming</option>
									</select>
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Zip Code</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input name="zipcode" placeholder="Zip Code" class="form-control" type="text">
								</div>
							</div>
						</div>


						<!-- Success message -->
						<%-- <div class="alert alert-success" role="alert" id="success_message">${message}
							<i class="glyphicon glyphicon-thumbs-up"></i> Email will be sent
							to you shortly.
						</div> --%>
						<%-- <p><font face="verdana" color="green"><b>${message}</b></font></p> --%>
						
						
						


						<div id="short-time-msg">
							<center><p><font face="verdana" color="green"><b>${message}</b></font></p></center>
							<script>
								hideAfterSomeTime()
							</script>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label"></label>
							<div class="col-md-4">
								<button type="submit" class="btn btn-warning">
									Register <span class="glyphicon glyphicon-thumbs-up"></span>
								</button>
							</div>
						</div>

					</fieldset>
				</form>
			</div>
		</div>
	</div>
	</div>
	<!-- /.container -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

	<script src="js/index.js"></script>

</body>
</html>