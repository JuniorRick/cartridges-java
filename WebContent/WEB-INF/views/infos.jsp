<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>
	<h1>Cartridge ${cartridge.model}</h1>

	<table>
		<thead>
		
		</thead>
		<tbody>
			<tr>
				<td>
					<c:forEach items="${infos}" var="info">
						${info.toner.model}
					</c:forEach>
				</td>
			</tr>
		</tbody>
	</table>
</body>


<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />

</html>