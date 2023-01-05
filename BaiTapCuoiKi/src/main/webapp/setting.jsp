<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f7f7f7;">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>


	<div class="container">


		<h3 class="text-center">Hello,${userobj.name}</h3>


		<div class="col-md-4">
			<a href="Edit_profile.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-primary">
							<i class="fa-solid fa-pen-to-square fa-3x"></i>
						</div>
						<h4>Edit Profile</h4>
					</div>
				</div>
			</a>
		</div>

		<hr>

			<div class="col-md-4">
				<a href="oder.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>

 <hr>

			<div class="col-md-4 mt-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-user-circle fa-3x"></i>
							</div>
							<h4>Help Center</h4>
							<p>24/7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>

	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>