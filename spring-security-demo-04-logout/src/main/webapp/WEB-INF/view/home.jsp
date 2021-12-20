<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>luv2code company home page</title>
</head>

<body>
<h2>luv2code Company Home page</h2>

<!-- Add a logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
	<input type="submit" value="Logout" />
</form:form>

</body>
</html>