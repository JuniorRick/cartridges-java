<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
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



		<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>