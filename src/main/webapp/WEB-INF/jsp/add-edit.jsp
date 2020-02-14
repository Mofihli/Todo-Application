<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="bg-light">
		<div class="container col-10">
			<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
			<form:hidden path="id"/>
			
			<div class="mt-5">
				<h2 class="text-primary">${modeTitle} Todo</h2>
			</div>
			
			<p>Fill in the fields below. In which it will be describing the item that you want to add to your list.</p>
			
			        <div class ="form-group offset-1 col-3">
			                <form:label path="title"><h6 class="text-primary">Title</h6></form:label>
						<div class="row">
			                <form:input class="form-control" path="title"></form:input>
						</div>
						<div class="row col-20 text-danger">
			                <form:errors path="title"></form:errors>
			            </div>
					</div>
					
			        <div class="form-group offset-1 col-3">
			                <form:label path="description"><h6 class="text-primary">Description</h6></form:label>
						<div class="row">
			                <form:textarea class="form-group" path="description" cols="40" rows="10"></form:textarea>
						</div>
						<div class="row col-20 text-danger">
			                <form:errors path="description"></form:errors>
			            </div>
			        </div></br>
			        
			    <div class="row offset-1 col-10">
			    	<form:button class="btn btn-warning" name="cancel">Cancel</form:button>
			    	&nbsp;&nbsp;&nbsp;
			        <input class="btn btn-success" type="submit" name="submit" value="Submit">
			    </div>
			</form:form>
		</div>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</body>
</html>
