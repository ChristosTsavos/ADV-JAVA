<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart payment</title>
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="text-center" style="margin: 2em;">
	<p>
		Thank you! we confirm your buying...
	</p>
	<p>We will inform you when we sent your articles
	</p>
	</div>
</body>
</html>