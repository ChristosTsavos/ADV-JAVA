<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="fr-FR">
<meta charset="utf-8">
<head>
<title>Plays</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<%@ include file="header.jsp"%>
	
	<h1>List plays</h1>
	<div class="container">	

		<table class="table table-striped p-2">
			<thead>
				<tr>
					<th>#</th>
					<th>title</th>
					<th>writer</th>
					<th>director</th>
					<th>actors</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ plays }" var="play" varStatus="loop">
					<tr>
						<td>${loop.index}</td>
						<td>${play.title }</td>
						<td>${play.writer }</td>
						<td>${play.director }</td>
						<td>${play.actors }						
						<td><a href="${contextPath }/showPlay/${ play.id }"></a></td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
	</div>
</body>
</html>