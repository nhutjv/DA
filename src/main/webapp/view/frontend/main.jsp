<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<section class="video-guide-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h5>Videos</h5>
				</div>
			</div>
		</div>
		<div class="row">
			<c:forEach var="video" items="${videos}">
				<div class="col-md-3" style="padding-bottom: 50px" >
					<div class="card">
						<img src="upload/${video.poster}" class="img-thumbnail"
							alt="${video.poster}" style="max-height: 400px;">
						<div class="card-body" style=" height: 140px">
							<a class="card-title">${video.title}</a>

							<form action="/nhutnhpc05876_asm2/home/video" method="post">
								<button
									style="background-color: white; color: black; border: none;"
									formaction="/nhutnhpc05876_asm2/home/video/like"
									class="fa-solid fa-thumbs-up"></button>

								<button
									style="background-color: white; color: black; border: none;"
									formaction="/nhutnhpc05876_asm2/home/video/share"
									class="fa-solid fa-share"></button>
								<button
									style="background-color: white; color: black; border: none;">
									<ul style="list-style: none">
										<li><i class="fa fa-eye"></i> ${video.views}</li>
									</ul>
								</button>
							</form>
						</div>
					</div>
				</div>

			</c:forEach>
			<hr>

		</div>
	</div>
</section>

<script src="view/foder/js/jquery-3.3.1.min.js"></script>
<script src="view/foder/js/bootstrap.min.js"></script>
<script src="view/foder/js/jquery.magnific-popup.min.js"></script>
<script src="view/foder/js/circle-progress.min.js"></script>
<script src="view/foder/js/jquery.barfiller.js"></script>
<script src="view/foder/js/jquery.slicknav.js"></script>
<script src="view/foder/js/owl.carousel.min.js"></script>
<script src="view/foder/js/main.js"></script>


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

