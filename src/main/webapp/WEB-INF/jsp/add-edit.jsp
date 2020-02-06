<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<h2 class="text-info">${modeTitle} Todo</h2>

<p>Fill in the fields below. In which it will be describing the item that you want to add to your list.</p>

<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
    <form:hidden path="id"/>
    <table class="table table-borderless">
        <tr>
            <td>
                <form:label path="title"><h6 class="text-primary">Title</h6></form:label>
            </td>
            <td>
                <form:input path="title"></form:input>
            </td>
            <td>
                <form:errors path="title"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description"><h6 class="text-primary">Description</h6></form:label>
            </td>
            <td>
                <form:textarea path="description" cols="40" rows="25"></form:textarea>
            </td>
            <td>
                <form:errors path="description"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <h6 class="text-primary">Action</h6>
            </td>
            <td>
                <form:button name="cancel">Cancel</form:button>
                &nbsp;
                <input type="submit" name="submit" value="Submit">
            </td>
        </tr>
    </table>
</form:form>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</body>
</html>
