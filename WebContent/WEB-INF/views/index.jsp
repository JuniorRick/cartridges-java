<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>
	<!-- Navigation menu -->
	<jsp:include page="/WEB-INF/views/layouts/nav.jsp" />

	<div class="clearfix mr-3">
		<h3 class="float-right">Home Page</h3>
	</div>

	<div class="toners-text">
		<a href="${pageContext.request.contextPath}/toners">Toners</a>
	</div>
	<div class="bg-left"></div>
	<div class="cartridges-text">
		<a href="${pageContext.request.contextPath}/cartridges">Cartridges</a>
	</div>
	<div class="bg-right"></div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

</body>
</html>