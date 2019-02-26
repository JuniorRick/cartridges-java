<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cartridges</title>
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
		<h3 class="float-right">Cartridges</h3>
	</div>

	<div class="container">

		<div class="row">
			<div class="col">
				<table class="table" >
					<thead>
						<tr>
							<th>#</th>
							<th scope="col">Barcode</th>
							<th scope="col">Model</th>
							<th scope="col">Office</th>
							<th scope="col">Date</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartridges}" var="cartridge" varStatus="loop">
							<tr>
								<td data-th="Position">${loop.index + 1}</td>
								<td data-th="Barcode">${cartridge.barcode}</td>
								<td data-th="Model">${cartridge.model}</td>
								<td data-th="Office">${cartridge.office}</td>
								<td data-th="Date">${cartridge.date}</td>
								<td data-th="Actions" style="white-space: nowrap;">
									<div style="display: inline">
										<c:url var="update" value="/cartridges/update">
											<c:param name="id" value="${cartridge.id}" />
										</c:url>
										<c:url var="delete" value="/cartridges/delete">
											<c:param name="id" value="${cartridge.id}" />
										</c:url>
										<c:url var="info" value="/cartridges/info">
											<c:param name="id" value="${cartridge.id}" />
										</c:url>
										
										<a href="${info}" class="btn btn-info btn-sm">Info</a>
										<a href="${update}" class="btn btn-secondary btn-sm">Edit</a>
										<button class="btn btn-danger btn-sm" data-toggle="modal"
											data-target="#confirmModal${cartridge.id}">Delete</button>
									</div>
								</td>
							</tr>

							<div class="modal fade" id="confirmModal${cartridge.id}">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Delete</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											Delete <span class="text-danger font-weight-bold">${cartridge.model}
												[${cartridge.barcode}]</span>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Cancel</button>
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