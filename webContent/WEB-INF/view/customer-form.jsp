<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<title>Customer Registration Form</title>
<style>
.error {
	color: red
}
</style>
</head>

<body>
	<i>Fill out the form. (*) means that field is required</i>

	<form:form action="processForm" modelAttribute="customer">
		<br>
		<br>
 First Name(*): <form:input path="firstName" />
		<br>
		<br>
 Last Name(*): <form:input path="lastName" />
		<br>
		<br>
		<input type="submit" value="Submit" />
			<form:errors path="lastName" cssClass="error" />
	</form:form>
</body>

</html>