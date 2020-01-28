<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit ToDo</title>
</head>
<body>
<h1>Edit TaskList Item</h1>
<form action="/add-2task" method="post">
<input value= ${ id } type="hidden" name="id">

					<p>Task Name: <input name="taskName"></p>
					<p>Description: <input type="text" name="description" min = "3" max ="400"></p>
					<p>Due Date: <input type="text" name="dueDate"></p>
					<button>Save</button>
					<button><a href="/tasklist" class="btn btn-primary mb-2">Cancel</a></button>
					</form>


</body>
</html>