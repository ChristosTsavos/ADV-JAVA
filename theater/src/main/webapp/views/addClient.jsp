<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Create an account</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<%@include file="header.jsp"%>

	<div class="container">

		<form:form method="POST" modelAttribute="client"
			action="${contextPath }/addClient" class="form-signin">
			<h2 class="form-signin-heading">Create your account</h2>

			<!-- Name input  -->
			<spring:bind path="name">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label>Name:</label>
					<form:input type="text" path="name" class="form-control"
						placeholder="Name" autofocus="true"></form:input>
					<form:errors path="name"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="gender">
				<label>Gender:</label>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:select path="gender" class="form-control"
						placeholder="Select gender">
						<form:option value="NONE">Select Gender</form:option>
						<form:options items="${genders}"></form:options>
					</form:select>
					<form:errors path="gender">
					</form:errors>
				</div>
			</spring:bind>

			<spring:bind path="birthday">
				<label>Birthday:</label>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input path="birthday" type="date" placeholder="Birthday"
						class="form-control" />
					<form:errors path="birthday"></form:errors>
				</div>
			</spring:bind>


			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label>Email:</label>
					<form:input type="text" path="email" class="form-control"
						placeholder="Email" autofocus="true"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>

			<!-- password -->
			<spring:bind path="password">
				<label>Password:</label>
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="password" class="form-control"
						placeholder="Password"></form:input>
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>

			<!-- password confirm -->
			<spring:bind path="passwordConfirm">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<label>Password confirm:</label>
					<form:input type="password" path="passwordConfirm"
						class="form-control" placeholder="Confirm password"></form:input>
					<form:errors path="passwordConfirm"></form:errors>
				</div>
			</spring:bind>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		</form:form>

	</div>
	<!-- /container -->

	<%-- <%@include file="footer.jsp" %> --%>

	<script src="${contextPath}/resources/js/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
