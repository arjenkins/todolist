<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<head>
<meta charset="UTF-8">
<title>Create Account</title>
</head>
<body>
	<div class=div1>
		<br> <br> <br> <br> <br> <br>
		<div class=div2>
			<h2>ToDo... Your personal, online task list.</h2>
		</div>
		<br> <br> <br> <br> <br>
		<h2 style="text-align: center;">Create Your Account</h2>
		<h3 style="text-align: center;">Please fill out the form below to
			register your username and create an an account.</h3>
		<form action="/register" method="post">

			<div class="form-row">
				<div class="form-group col-md-6">
					<input type="text" class="form-control" placeholder="First Name"
						name="firstName" required minlength="2" maxlength="10" />
				</div>
				<div class="form-group col-md-6">
					<input type="text" class="form-control" placeholder="Last Name"
						name="lastName" required minlength="2" maxlength="10" />

				</div>
			</div>
			<div class="form-group">
				<div class="form-group col-md-6">
					<input type="text" class="form-control" placeholder="Email"
						name="email" required /> <small id="emailHelp"
						class="form-text text-muted">We'll never share your email
						with anyone else.</small>


				</div>
				<div class="form-group col-md-6">
					<input type="text" class="form-control" placeholder="Password"
						name="password" required />
				</div>
				<br>
				<button type="submit" class="btn btn-primary mb-2">log in</button>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br>
		</form>
	</div>
	<p align="center">Copyright© Anesha Robinson Jenkins 2019</p>
</body>
</html>