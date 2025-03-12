<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Amin Template">
<meta name="keywords" content="Amin, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Amin | Template</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700"
	rel="stylesheet">

<%-- <link rel="stylesheet" href="<c:url value='/templates/user/css/bootstrap-reboot.min.css'/>"> --%>

<!-- Css Styles -->
<link rel="stylesheet" href="view/foder/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/barfiller.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="view/foder/css/style.css" type="text/css">






</head>

<body>

			<jsp:include page="${menu}"></jsp:include>
		<main>
			<jsp:include page="${view}"></jsp:include>
		</main>


	<!-- Videos Guide Section End -->
	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-about">
						<div class="fa-logo">
							<a href="#"><img src="img/f-logo.png" alt=""></a>
						</div>
						<p>Xem phim online miễn phí chất lượng cao với phụ đề tiếng
							việt - thuyết minh - lồng tiếng. ACE FILM có nhiều thể loại phim
							phong phú, đặc sắc, nhiều bộ phim hay nhất - mới nhất..</p>
						<div class="fa-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="tags-cloud">
						<div class="section-title">
							<h5>Tags Cloud</h5>
						</div>
						<div class="tag-list">
							<a href="#"><span>Gaming</span></a> <a href="#"><span>Platform</span></a>
							<a href="#"><span>Playstation</span></a> <a href="#"><span>Hardware</span></a>
							<a href="#"><span>Reviews</span></a> <a href="#"><span>Simulation</span></a>

						</div>
					</div>
				</div>
			</div>
			<div class="copyright-area">
				<div class="row">
					<div class="col-lg-6">
						<div class="ca-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | With <i class="fa fa-heart"
									aria-hidden="true"></i> by <a href="https://colorlib.com"
									target="_blank">nhutnhpc05876<a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="ca-links">
							<a href="#">About</a> <a href="#">Subscribe</a> <a href="#">Contact</a>
							<a href="#">Support</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Sign Up Section Begin -->
	<div class="signup-section">
		<div class="signup-close">
			<i class="fa fa-close"></i>
		</div>

		<div class="signup-text">
			<div class="container">
				<div class="signup-title">

					<p>Vui lòng nhập thông tin đăng ký</p>
				</div>
				<form action="/nhutnhpc05876_asm2/crtk" method="post" class="signup-form">
					<div class="sf-input-list">
                    <!-- Input fields for registration information -->
                    <input type="text" name="userName" class="input-value" placeholder="User Name*" required>
                    <!-- 'name' attribute identifies the field in the form submission -->
                    <!-- 'placeholder' attribute provides a hint for user input -->
                    <!-- 'required' attribute specifies that this field is mandatory -->

                    <input type="password" name="password" class="input-value" placeholder="Password" required>
                    <!-- 'type="password"' ensures password is masked in input field -->

                    <input type="email" name="email" class="input-value" placeholder="Email Address" required>
                    <!-- 'type="email"' ensures the input is a valid email format -->

                    <input type="text" name="fullName" class="input-value" placeholder="Full Name" required>
                    <!-- 'type="text"' for full name -->

                </div>
					<div class="radio-check">
						<label for="rc-agree">I agree with the term & conditions <input
							type="checkbox" id="rc-agree"> <span class="checkbox"></span>
						</label>
					</div>
					<button type="submit">
						<span>REGISTER NOW</span>
					</button>
				</form>
			</div>
		</div>
	</div>
		<div class="login-section">
			<div class="login-close">
				<i class="fa fa-close"></i>
			</div>

			<div class="login-text">
				<div class="container">
					<div class="login-title">

						<p>Vui lòng nhập thông tin đăng nhập</p>
					</div>
					<form action="/nhutnhpc05876_asm2/login" method="post" class="login-form">
						<div class="sf-input-list">
							<input  name="userName"  type="text" class="form-control" id="exampleFormControlInput1"placeholder="User Name*">
							<input name="passWord" id="exampleFormControlInput1" type="password" class="input-value" placeholder="Password*">

						</div>
						<div class="radio-check">
							<label for="rc-agree">Remember me? <input type="checkbox"
								id="rc-agree"> <span class="checkbox"></span>
							</label>
						</div>
						<button type="submit">
							<span>LOGIN NOW</span>
						</button>
					</form>
				</div>
			</div>
		</div>

	

	<!-- Quên mật khẩu -->
	<div class="forpass-section">
		<div class="forpass-close">
			<i class="fa fa-close"></i>
		</div>

		<div class="forpass-text">
			<div class="container">
				<div class="forpass-title">

					<p>Quên Mật Khẩu</p>
				</div>
				<form action="#" class="forpass-form">
					<div class="sf-input-list">
						<input type="text" class="input-value" placeholder="User Name*">
						<input type="text" class="input-value" placeholder="Email">

					</div>

					<button type="submit">
						<span>RETRIEVE</span>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- đổi mật khẩu -->
	<div class="repass-section">
		<div class="repass-close">
			<i class="fa fa-close"></i>
		</div>

		<div class="repass-text">
			<div class="container">
				<div class="repass-title">

					<p>Đổi Mật Khẩu</p>
				</div>
				<form action="#" class="repass-form">
					<div class="sf-input-list">
						<input type="text" class="input-value" placeholder="Mật khẩu cũ*">
						<input type="text" class="input-value" placeholder="Mật khẩu mới">
						<input type="text" class="input-value"
							placeholder="Nhập lại mật khẩu mới">

					</div>

					<button type="submit">
						<span>SUBMIT</span>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Sign Up Section End -->
	<!-- update -->
	<div class="update-section">
		<div class="update-close">
			<i class="fa fa-close"></i>
		</div>

		<div class="update-text">
			<div class="container">
				<div class="update-title">

					<p>Cập nhật tài khoản</p>
				</div>
				<form action="#" class="update-form">
					<div class="sf-input-list">
						<input type="text" class="input-value" placeholder="UserName*">
						<input type="text" class="input-value" placeholder="PassWord">
						<input type="text" class="input-value" placeholder="FullName">
						<input type="text" class="input-value" placeholder="Email">

					</div>

					<button type="submit">
						<span>UPDATE</span>
					</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->
	<!-- Js Plugins -->

</body>
<script type="">
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent the default form submission

        // You can perform client-side validation or additional actions here if needed

        // Submit the form programmatically (or let it proceed with default behavior)
        this.submit();
    });
});
</script>
<script src="view/foder/js/jquery-3.3.1.min.js"></script>
<script src="view/foder/js/bootstrap.min.js"></script>
<script src="view/foder/js/jquery.magnific-popup.min.js"></script>
<script src="view/foder/js/circle-progress.min.js"></script>
<script src="view/foder/js/jquery.barfiller.js"></script>
<script src="view/foder/js/jquery.slicknav.js"></script>
<script src="view/foder/js/owl.carousel.min.js"></script>
<script src="view/foder/js/main.js"></script>
</html>