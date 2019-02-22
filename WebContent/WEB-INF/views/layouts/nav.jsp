<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nav.css" />

<header class="header">
	<nav class="hamburger">
		<div class="hamburger-btn" onclick="showNav()">
			<div class="bar"></div>
			<div class="bar"></div>
			<div class="bar"></div>
		</div>
	</nav>
	<nav class="desk">
		<div class="desk_nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/toners">Toners</a></li>
				<li><a href="${pageContext.request.contextPath}/toners/add">Add
						Toner</a></li>
				<li><a href="#">Cartridges</a></li>
			</ul>
		</div>
	</nav>

</header>

<nav class="mobile">
	<div class="hamburger-btn" onclick="hideNav()">
		<div class="bar mobile-bar1"></div>
		<div class="bar mobile-bar2"></div>
	</div>

	<ul class="mobile-items">
		<li class="mobile-item">
			<a href="${pageContext.request.contextPath}/">Home</a>
		</li>
		<hr style="border-color: white; width: 70%;">

		<li class="mobile-item">
			<a href="${pageContext.request.contextPath}/toners">Toners</a>
			<ul>
				<li>
					<a href="${pageContext.request.contextPath}/toners/add">
					Add	new</a></li>
			</ul>
		</li>
		
		<hr style="border-color: white; width: 70%;">
		<li class="mobile-item"><a href="">Cartridges</a>
			<ul>
				<li><a href="#">Add new</a></li>
			</ul>
		</li>
		
		<hr style="border-color: white; width: 70%;">
		
	</ul>
</nav>

<script>
	function showNav() {
		document.querySelector(".mobile").classList.add("open")
	}

	function hideNav() {
		document.querySelector(".mobile").classList.remove("open")
	}
</script>
