<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>luv2code company home page</title>
</head>

<body>
<h2>luv2code Company Home page</h2>
<hr>

<p>Welcome to the lov2code 	company home page!</p>

<hr>

<!-- Display username and roles -->
<p>
	User: <security:authentication property="principal.username"/>
	<br><br>
	Role: <security:authentication property="principal.authorities"/>
</p>

<security:authorize access="hasRole('MANAGER')">


<!-- Add a link to point to /leader... this is for the managers -->


<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
		(only for manager peeps)
</p>

</security:authorize>

<!-- Add a link to point to /systems... this is for the admin -->

<security:authorize access="hasRole('ADMIN')">

<p>
		<a href="${pageContext.request.contextPath}/systems">IT system meetings</a>
		(only for admin peeps)
</p>

</security:authorize>



<!-- Add a logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
	<input type="submit" value="Logout" />
</form:form>

</body>
</html>