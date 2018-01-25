<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <link rel="shortcut icon" href="images/favicon.ico" />
  <title>Feedback</title>
  <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

      <link rel="stylesheet" href="css/style.css">
	  <link rel="stylesheet" href="css/ratings.css">
	
<script>
function hideAfterSomeTime(hideTime)
{
	// 10000 = 10 seconds. Change it
	window.setTimeout("document.getElementById('short-time-msg').style.display='none'", (hideTime)?hideTime:5000);
}
</script>	
  
<style type="text/css">
legend {
	padding-left:350px;
}

.container{
	padding: 5em inherit;
}
</style>
  
</head>

<body>
  <div class="container">
	    <div class="panel panel-primary" style="margin-top:2%">
      <div class="panel-heading">Service feedback</div>
      <div class="panel-body">

    <form class="form-horizontal" method="post"  id="feedback" name="feedback">
<fieldset>

<center><h5 style="font-family:'Arial Black">You recently interacted with our customer support team. Please share your experience.</h5></center><br><br>
<!-- radio checks -->
<div class="form-group">
	<label class="col-md-4 control-label">Ratings</label>
    <div class="col-md-4 inputGroupContainer">
		<div class="input-group">
		
			<div class="rating" style="margin-left:-20px">
				<input id="star5" name="rating" type="radio" value="5" class="radio-btn hide" />
				<!--  <label for="star5">☆</label>-->
				<label for="star5">&#9734;</label>
			
				<input id="star4" name="rating" type="radio" value="4" class="radio-btn hide" />
				
				<!-- For ISO-8895 encoding -->
				<!-- <label for="star4">☆</label> -->
				
				<!-- For UTF-8 -->
				<label for="star4">&#9734;</label>
            
				<input id="star3" name="rating" type="radio" value="3" class="radio-btn hide" />
				<!-- <label for="star3">☆</label> -->
				<label for="star3">&#9734;</label>
            
				<input id="star2" name="rating" type="radio" value="2" class="radio-btn hide" />
				<!-- <label for="star2">☆</label> -->
				<label for="star2">&#9734;</label>
            
				<input id="star1" name="rating" type="radio" value="1" class="radio-btn hide" />
				<!-- <label for="star1">☆</label> -->
				<label for="star1">&#9734;</label>
				<div class="clear"></div>
			</div>
				
		</div>
	</div>
</div>

<!-- Text area -->
  
<div class="form-group">
  <label class="col-md-4 control-label">Feedback</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        	<textarea class="form-control" name="description" placeholder="Feedback"></textarea>
  </div>
  </div>
</div>

<!-- Success message -->
<!-- <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div> -->

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
    <button type="submit" class="btn btn-warning" >Submit <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>
</div>
    </div><!-- /.container -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>