<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/barfiller.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<header class="header-section">
	<div class="ht-options">

		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-8">
					<div class="ht-widget">
						<ul>
							<li><c:choose>
									<c:when test="${!empty sessionScope.fullName}">${sessionScope.fullName}</c:when>
									<c:otherwise>Xin chào </c:otherwise>
								</c:choose></li>
							<li><i class="fa fa-sun-o"></i> <span>21<sup>c</sup></span>
								VietNam</li>
							<li class="signup-switch signup-open"><i class=""></i>Đăng
								Ký</li>

							<!-- 							<li  style="cursor: pointer;" class="login-switch login-open"><i -->
							<!-- 								class=""></i> Đăng Nhập</li> -->

							<li><a style="cursor: pointer;"
								class="login-switch login-open">Đăng nhập</a></li>
							<li><a style="cursor: pointer;"
								href="/nhutnhpc05876_asm2/logout">Đăng xuất</a></li>

						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-4">
					<div class="ht-social">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-youtube-play"></i></a> <a href="#"><i
							class="fa fa-instagram"></i></a> <a href="#"><i
							class="fa fa-envelope-o"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="logo">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<div class="nav-options">
		<div class="container">
			<div class="nav-menu">
				<ul>
					<li class="active"><a href="#"><span>Home</span></a></li>

					<li class="active"><a href="#"><span>HISTORY</span></a></li>

					<li class="forpass-switch forpass-open"><a href="#"><span>My
								favorite<i class=""></i>
						</span></a></li>
					<li><a href="#"><span>My Acount <i
								class="fa fa-angle-down"></i></span></a>
						<ul class="dropdown">
							<c:choose>
								<c:when test="${!empty sessionScope.fullName}">
									<li><a class="dropdown-item" href="#">Cập nhật thông
											tin</a></li>
									<li><a class="dropdown-item" href="#">Đổi mật khẩu</a></li>
									<li><hr class="dropdown-divider"></li>
									<c:if
										test="${!empty sessionScope.isAdmin && sessionScope.isAdmin}">
										<li><a class="dropdown-item"
											href="/nhutnhpc05876_asm2/admin">Trang quản trị</a></li>
									</c:if>
									<li><a class="dropdown-item"
										href="/nhutnhpc05876_asm2/logout">Đăng xuất</a></li>


								</c:when>
								<c:otherwise>
									<li><a class="dropdown-item">Đăng nhập</a></li>
									<li><a class="dropdown-item" href="#">Đăng ký</a></li>
									<li><a class="dropdown-item" href="#">Quên mật khẩu</a></li>
								</c:otherwise>
							</c:choose>
						</ul></li>

				</ul>
			</div>
		</div>
	</div>
</header>
<script src="view/foder/js/jquery-3.3.1.min.js"></script>
<script src="view/foder/js/bootstrap.min.js"></script>
<script src="view/foder/js/jquery.magnific-popup.min.js"></script>
<script src="view/foder/js/circle-progress.min.js"></script>
<script src="view/foder/js/jquery.barfiller.js"></script>
<script src="view/foder/js/jquery.slicknav.js"></script>
<script src="view/foder/js/owl.carousel.min.js"></script>
<script src="view/foder/js/main.js"></script>