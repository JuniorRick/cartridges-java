<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toners</title>
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
	 <h3 class="float-right">Toners</h3>
	</div>
	
	<div class="container">

		<div class="row">
			<div class="col">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th scope="col">Model</th>
							<th scope="col">Quantity (gr)</th>
							<th scope="col">Quantity Remained (gr)</th>
							<th scope="col">Procure date</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${toners}" var="toner" varStatus="loop">
							<tr>
								<td data-th="Position"> ${loop.index + 1}</td>
								<td data-th="Model">${toner.model}</td>
								<td data-th="Quantity">${toner.quantity}</td>
								<td data-th="Remainder">${toner.remainder}</td>
								<td data-th="Procure date">${toner.procure_date}</td>
								<td data-th="Actions" style="white-space: nowrap;">
									<div>
									<c:url var="update" value="/toners/update">
										<c:param name="id" value="${toner.id}" />
									</c:url> <c:url var="delete" value="/toners/delete">
										<c:param name="id" value="${toner.id}" />
									</c:url> 
									
									<a href="${update}" class="btn btn-secondary btn-sm" >Edit</a>
									<button class="btn btn-danger btn-sm" data-toggle="modal"
											data-target="#confirmModal${toner.id}">
											Delete
										</button>
									</div>
								</td>
							</tr>
							
							<div class="modal fade" id="confirmModal${toner.id}">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">
													Delete
												</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												Delete
												<span class="text-danger font-weight-bold">${toner.model}</span>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">
													Cancel
												</button>
												<a href="${delete}" class="btn btn-danger">Confirm</a>
											</div>
										</div>
									</div>
								</div>
								
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>



	</div>

	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />

</body>
</html>