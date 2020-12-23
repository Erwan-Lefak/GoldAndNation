<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">    

<title>Site - Login</title>
</head>
<body>
	<!-- header -->
	<jsp:include page='../includes/navbar-login.jsp' />
	<!-- fin header -->
	<!-- content -->
<br><br><br>
	<div class="container">
		<div class="row">
			<form class="form-horizontal" style="width: 50%; margin: auto;"
				action="<c:url value='/login/loginForm'/>" method="post">
				<fieldset>
						<div class="form-group">
							<label for="email">Email address</label> <input
								type="email" class="form-control" id="email"name="email">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input
								type="password" class="form-control"  id="password"name="password">
						</div>

						<button type="submit" class="btn btn-primary">Connexion</button>
				</fieldset>
			</form>

		</div>
	</div>
	<!-- fin content -->
	<!-- footer -->
	<jsp:include page='../includes/footer.jsp'/>  
	<!-- fin footer -->
</body>
</html>