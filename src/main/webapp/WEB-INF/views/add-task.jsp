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
<title>ToDo</title>
</head>
<body>
	<div class=div1>
		<br> <br> <br> <br> <br> <br>
		<div class=div2>
			<h2>ToDo... Your personal, online task list.</h2>
		</div>
		<br> <br>

		<h2 style="text-align: center;">Add tasks to your list</h2>
		<form action="/add-task" method="post">
			<div class="container center_div">
				<div class="form-group row">
					<div class="col-sm-8">
						<input type="text" class="form-control"
							placeholder="Name of Task:" name="taskName" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-10">
						<textarea class="form-control" placeholder="Task Description:"
							name="description" min="3" max="400" rows="3"></textarea>
					</div>
				</div>
				<div class="form-group row">

					<div class="col-sm-6">
						<input type="text" class="form-control" placeholder="Enter due date as MM/DD/YYYY:"
							name="dueDate" />
					</div>
				</div>
				<button>Save</button>
				<button>
					<a href="/tasklist" class="button">Cancel</a>
				</button>
				<br> <br> <br> <br> <br> <br> <br>
				<br> <br>
			</div>
		</form>

	</div>
	<p align="center">Copyright© Anesha Robinson Jenkins 2019</p>
</body>
</html>