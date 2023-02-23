<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
<link href="${contextPath}/resources/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/bootstrap/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form method="get" action="updateClient" class="form-signin">
			<h2 class="form-signin-heading text-center">Client details</h2>

			<div class="form-group">
				<label>Name:</label> <input name="name" class="form-control"
					type="text" value="${client.name}" readonly />
			</div>
			<div class="form-group">
				<label>Email:</label> <input name="email" class="form-control"
					type="text" value="${client.email}" readonly />
			</div>

			<div class="form-group">
				<label>Gender</label> <input name="gender" class="form-control"
					type="text" value="${client.gender}" readonly />
			</div>

			<div class="form-group">
				<fmt:parseDate value="${client.birthday }"
					pattern="yyyy-MM-dd HH:mm:ss" var="objectDate" />
				<fmt:formatDate value="${objectDate}" var="stringPatternDate"
					pattern="yyyy-MM-dd" />
				<label>Birthday</label> <input name="birthday" type="date"
					class="form-control" value="${stringPatternDate }" readonly />
			</div>

		</form>

		<form action="updateClient">
			<input type="hidden" name="id" value="${client.id}" /> <input
				type="submit" value="Update"
				class="btn btn-lg btn-primary btn-block" />
		</form>
	</div>
</body>
</html>