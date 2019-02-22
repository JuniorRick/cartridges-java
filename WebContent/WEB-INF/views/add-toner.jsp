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
		<h3 class="float-right">Add new Toner</h3>
	</div>

	<div class="container" style="max-width: 600px">

		<form:form action="store" modelAttribute="toner" method="POST">
			<div class="form-group">
				<label for="">Toner model</label>
				<form:input path="model" cssClass="form-control"
					placeholder="Enter Model" />
			</div>
			<div class="form-group">
				<label for="">Quantity</label>
				<form:input path="quantity" cssClass="form-control"
					placeholder="Enter quantity" />
			</div>
			
			<div class="form-group">
				<label for="">Purchase Date</label>
				<input type="date" id="procure_date" name="procure_date" class="form-control" />
			</div>
			
			<input type="submit" class="btn btn-primary" value="Save">
		</form:form>
	</div>

	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>