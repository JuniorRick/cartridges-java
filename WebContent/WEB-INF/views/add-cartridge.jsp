<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
</head>
<body>

	<jsp:include page="/WEB-INF/views/layouts/nav.jsp" />

	<div class="clearfix mr-3">
		<h3 class="float-right">Add new Cartridge</h3>
	</div>

	<div class="container" style="max-width: 600px">

		<form:form action="save" modelAttribute="cartridge" method="POST">

			<form:hidden path="id" />
			
			<div class="form-group">
				<label for="">Barcode</label>
				<form:input path="barcode" cssClass="form-control"
					placeholder="Enter Barcode" />
			</div>
			<div class="form-group">
				<label for="">Model</label>
				<form:input path="model" cssClass="form-control"
					placeholder="Enter model" />
			</div>
			<div class="form-group">
				<label for="">Office</label>
				<form:input path="office" cssClass="form-control"
					placeholder="Enter office" />
			</div>

			<input type="submit" class="btn btn-primary" value="Save">
		</form:form>
	</div>

	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>