<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Publish alerts</title>
</head>
<body>
	<p><p>
	<p align="center"><font face="verdana" color="green"><b>${message}</b></font></p>
	<form method="post" name="alerts"> 
		
		<table align="center">		  	
			<tr>
				<td>Alert type</td>
			    <td><input type="radio" name="type" value="news" checked="checked"> News</td>
			    <td><input type="radio" name="type" value="sports"> Sports</td>
			    <td><input type="radio" name="type" value="weather"> Weather</td>
		  	</tr>		  	
		</table>
		<table align="center">
			<tr>
				<td>Message</td>
			    <td><textarea name="description" cols="40" rows="5"></textarea></td>		    
			</tr>			
		</table>
		<table align="center">			
			<tr>				
				<td><button name="submitbutton" value="Publish" type="submit" align="center">Publish</button></td>
			</tr>
		</table>

		
	</form> 
</body>
</html> --%>

<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/favicon.ico" />
<title>Publish alerts</title>
<script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>



<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

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
	padding-left: 330px;
}
</style>

<style type="text/css">
legend {
	padding-left:330px;
}

.radio label, .checkbox label {
    padding-left: 10px;
    margin-bottom: 0;
    font-weight: bold;
    cursor: pointer;
}

.switch {
    position: relative;
    display: table-cell;
    width: 60px;
    height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: coral;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: green;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

.form-horizontal .radio, .form-horizontal .checkbox {
    min-height: 27px;
    width: max-content;
}
</style>

</head>

<body>
	<div class="container">

		<div class="panel panel-primary" style="margin-top: 2%">
			<div class="panel-heading">Publish alerts</div>
			<div class="panel-body">

				<form class="form-horizontal" method="post" id="alerts" name="alerts">
					<fieldset>

						<!-- Form Name -->



						<!-- radio checks -->
						<!-- <div class="form-group">
							<label class="col-md-4 control-label">Type of alert</label>
							<div class="col-md-4">
								<div class="radio">
									<label> <input type="radio" name="type" value="news" required /> News
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="type" value="sports" required /> Sports
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="type" value="weather" required /> Weather
									</label>
								</div>
							</div>
						</div> -->
						
						<!-- radio checks -->
						<div class="form-group">
							<label class="col-md-4 control-label">Type of alert</label>
							<div class="col-md-4">
								<div class="radio">
									
									<label class="switch">News</label> <label class="switch">
										<input type="radio" name="type" value="news" checked>
										<span class="slider round"></span>
									</label>
									
									<label class="switch">Sports</label> <label class="switch">
										<input type="radio" name="type" value="sports"> 
										<span class="slider round"></span>
									</label>
									
									<label class="switch">Weather</label> <label class="switch">
										<input type="radio" name="type" value="weather"> 
										<span class="slider round"></span>
									</label>
									
								</div>
							</div>
						</div>

						<!-- Text area -->

						<div class="form-group">
							<label class="col-md-4 control-label">Alert Description</label>
							<div class="col-md-4 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
									<textarea class="form-control" name="description" placeholder="Alerts Description"></textarea>
								</div>
							</div>
						</div>

						<!-- Success message -->
						<!-- <div class="alert alert-success" role="alert" id="success_message">
							Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.
						</div> -->

						<%-- <center><p><font face="verdana" color="green"><b>${message}</b></font></p></center> --%>
						<div id="short-time-msg">
							<center>
								<p>
									<font face="verdana" color="green"><b>${message}</b></font>
								</p>
							</center>
							<script>
								hideAfterSomeTime()
							</script>
						</div>
						
						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label"></label>
							<div class="col-md-4">
								<button type="submit" class="btn btn-warning">Publish <span class="glyphicon glyphicon-send"></span>
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
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

	<script src="js/index.js"></script>

</body>
</html>