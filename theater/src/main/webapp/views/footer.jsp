<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:url var="showArticles" value="/showArticles"></c:url>

<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">


 <!-- Footer -->
<div class="footer">
    <h4> 7arches bookstore<span class="orange">.</span></h4>
        
    <div class="copyright">Copyright 2021.Tous Droits Réservés.</div>
    <span class="icon">
	    <i class="fab fa-facebook-f"></i>
    	<i class="fab fa-twitter" style="color: #1E90FF"></i>
    	<i class="fab fa-linkedin-in" style="color: #00BFFF"></i>
    	<i class="fab fa-stack-overflow"style="color: #FF4500"></i>
    	<i class="fab fa-youtube"style="color: red"></i>
    </span>
</div>
