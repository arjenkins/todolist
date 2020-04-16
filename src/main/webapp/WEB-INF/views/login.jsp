<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>ToDo.</title>
</head>
<body>
	<div class=div1>
		<br> <br> <br> <br> <br> <br>
		<div class=div2>
			<h2>ToDo... Your personal, online task list.</h2>
		</div>
		<br> <br> <br> <br>
		<h2 style="text-align: center;">Welcome. Please login.</h2>
		<form action="/login" method="post">
			<div class="container center_div">
				<div class="col-md-12">
					<input type="email" class="form-control" placeholder="Email"
						name="email" required /> <br> <input type="text"
						class="form-control" placeholder="Password" name="password"
						required /> <br>
					<button type="submit" class="btn btn-primary mb-2">log in</button>
				</div>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>
		</form>
	</div>
	<p align="center">Copyright© Anesha Robinson Jenkins 2019</p>
</body>
</html>