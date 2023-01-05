<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

 <div class="container-fluid"
	style="Height: 0px; background-color: green"></div>
	
	<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

.navbar {
	background-color: green;
}

.navbar{
    font-size: 16px;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 46px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
</style>
	


<nav class="navbar navbar-expand-lg navbar-dark bg-custom ">
	<a class="navbar-brand" href="#">  <img src="image/logo2.png" alt=""> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_vip_room.jsp">
					VIP</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_typ1_room.jsp">Type1</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_type2_room.jsp">Type2</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit">
				<i class="fa-solid fa-gear"></i>
			</a>
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-phone"></i>
			</button>
		</form>
	</div>
</nav>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-square-h text-success"></i>HOTEL
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
				<input class="form-control mr-sm-2" type="search" name="ch"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>

		<c:if test="${not empty userobj}">
			<div class="col-md-3">

				<a href="checkout.jsp"><i class="fa-solid fa-cart-plus fa-2x mt-1"></i></a>
				
				 <a href="login.jsp"
					class="btn btn-success"><i class="fa-solid fa-user-check"></i>
					${userobj.name}</a> 
					<a href="logout" class="btn btn-secondary text-white"><i
					class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>

			</div>
		</c:if>



		<c:if test="${empty userobj}">
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a> <a
					href="register.jsp" class="btn btn-secondary text-white"><i
					class="fa-solid fa-user-plus"></i>Register</a>

			</div>

		</c:if>

	</div>

</div>