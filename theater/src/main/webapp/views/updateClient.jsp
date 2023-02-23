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
		<form method="post" action="addClient" class="form-signin">
			<h2 class="form-signin-heading text-center">update user</h2>

			<div class="form-group">
				<input type="hidden" name="id" value="${client.id }" />
			</div>
			<div class="form-group">
				<label>Name:</label> <input name="name" class="form-control"
					type="text" value="${client.name}" />
			</div>
			<div class="form-group">
				<label>Email:</label> <input name="email" class="form-control"
					type="text" value="${client.email}" />
			</div>

			<div class="form-group">
				<label>Gender</label> <select name="gender" class="form-control"">
					<c:if test="${client.gender == 'male' }">
						<option value="male" selected>male</option>
						<option value="female">female</option>
					</c:if>

					<c:if test="${client.gender == 'female' }">
						<option value="male">male</option>
						<option value="female" selected>female</option>
					</c:if>

				</select>
				<%-- <input name="gender" class="form-control" type="text"
					value="${client.gender}" /> --%>
			</div>

			<div class="form-group">
				<fmt:parseDate value="${client.birthday }"
					pattern="yyyy-MM-dd HH:mm:ss" var="objectDate" />
				<fmt:formatDate value="${objectDate}" var="stringPatternDate"
					pattern="yyyy-MM-dd" />
				<label>Birthday</label> <input name="birthday" type="date"
					class="form-control" value="${stringPatternDate }" />
			</div>

			<div class="form-group">
				<label>Password</label> <input type="password" name="password"
					class="form-control" placeholder="Password" />

			</div>
			<div class="form-group">
				<label>Password confirm</label> <input type="password"
					name="passwordConfirm" class="form-control"
					placeholder="Confirm password" />
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

			<button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
		</form>
	</div>
</body>
</html>