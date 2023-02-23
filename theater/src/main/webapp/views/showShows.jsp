<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="fr-FR">
<meta charset="utf-8">
<head>
<title>Shows</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<%@ include file="header.jsp"%>
	<form action="${ pageContext.request.contextPath }/showsByDate"
		method="post" class="my-2">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="date"
			name="searchDate"> <input type="submit"
			value="Search">
	</form>

	<h1>List shows</h1>
	<div class="container">

		<table class="table table-striped p-2">
			<thead>
				<tr>
					<th>#</th>
					<th>date</th>
					<th>play title</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ shows }" var="show" varStatus="loop">
					<tr>
						<td>${loop.index+1}</td>
						<td>${show.date }</td>
						<td>${show.play.title }</td>
						<td><a href="${contextPath }/showShows/${ show.id }"></a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</body>
</html>