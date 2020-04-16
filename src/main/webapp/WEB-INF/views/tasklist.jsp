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
		<br> <br>

		<h2 style="text-align: center;">FIXME: put randomized personal
			quote here!</h2>
		<br> <br>
	</div>
	<br>
	<p>Welcome to your personal ToDo list, ${ user.firstName}.</p>
	<table class="table">
		<thread>
		<tr>
			<th>Task Name</th>
			<th>Description</th>
			<th>Due Date</th>
			<th>Completed</th>
		</tr>
		</thread>
		<tbody>
			<c:forEach var="task" items="${ task }">
				<tr>
					<td>${task.taskName}</td>
					<td>${task.description}</td>
					<td>${task.dueDate }</td>
					<td><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="defaultCheck1"> <label class="form-check-label"
								for="defaultCheck1">Task Completed</label>
						</div></td>
					<td><button>
							<a href="/edit/${task.id}">FIXME: Edit</a>
						</button></td>
					<td><button>
							<a href="/delete-task/${task.id}"onclick="return confirm('Are you sure?')">Delete</a>
						</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<button>
		<a href="/add-task">Add task</a>
	</button>
	<button>
		<a href="/logout">logout</a>
	</button>
	<br>
	</div>
	<p align="center">Copyright© Anesha Robinson Jenkins 2019</p>
</body>
</html>