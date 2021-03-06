<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="bg-light">
<jsp:include page="/WEB-INF/jsp/navigation-bar.jsp"/><br/>
	<div class="container">
		<h2 class="text-primary">Todo Items</h2>

		<p>Below is the list of things I want to achieve and items that I would like to have. Which include specific and the status update on the achievement or completion of each.</p>

		<table class="table table-striped">
		    <thead>
		    <tr>
		        <td><h1 class="text-primary"><label>Title</label></h1></td>
		        <td><h1 class="text-primary"><label>Completed</label></h1></td>
		        
		        <td><h1 class="text-primary"><label>Type</label></h1></td>
		
		        <td><h1 class="text-primary"><label>Action</label></h1></td>
		    </tr>
		    </thead>
		    <tbody>
		    <c:forEach var="todo" items="${todos}">
		    <tr>
		        <td>
		            ${todo.title}
		        </td>
		        <td>
		            ${todo.completed}
		        </td>
		        
		        <td>
		            ${todo.type}
		        </td>
		        
		        
		        
		        <td>
		            <a href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
		            &nbsp;
		            <a href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
		            &nbsp;
		            <a href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
		        </td>
		    </tr>
		    </c:forEach>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</body>
</html>
