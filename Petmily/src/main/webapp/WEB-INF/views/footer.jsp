<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<footer class="footer">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-4 col-lg-3 mb-4 mb-md-0">
				<h2 class="footer-heading">Petmily</h2>
				<p>Petmily With</p>
				<ul class="ftco-footer-social p-0">
					<li class="ftco-animate"><a href="https://twitter.com" data-toggle="tooltip"
						data-placement="top" title="Twitter"><span
							class="fa fa-twitter"></span></a></li>
					<li class="ftco-animate"><a href="https://www.facebook.com" data-toggle="tooltip"
						data-placement="top" title="Facebook"><span
							class="fa fa-facebook"></span></a></li>
					<li class="ftco-animate"><a href="https://www.instagram.com" data-toggle="tooltip"
						data-placement="top" title="Instagram"><span
							class="fa fa-instagram"></span></a></li>
				</ul>
			</div>

			<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
				<h2 class="footer-heading">Quick Links</h2>
				<div class="block-23 mb-3">
					<ul>
						<li style="margin-bottom: 0px;"><a href="/" class="d-block">Home</a></li>
						<c:choose>
							<c:when test="${user_type =='admin'}">
								<li style="margin-bottom: 0px;"><a href="/admin_membership"
									class="d-block">Admin</a></li>
							</c:when>
							<c:otherwise>
								<!-- 								<li class="nav-item"><a href="admin_membership"
									class="nav-link">Admin</a></li> -->
							</c:otherwise>
						</c:choose>
						<li style="margin-bottom: 0px;"><a href="/subscribe"
							class="d-block">Subscribe</a></li>
						<li style="margin-bottom: 0px;"><a href="/product"
							class="d-block">Store</a></li>
						<li style="margin-bottom: 0px;"><a href="/join"
							class="d-block">Join</a></li>
						<c:choose>
							<c:when test="${empty user_id}">
								<li style="margin-bottom: 0px;"><a href="/login"
									class="d-block">Login</a></li>
							</c:when>
							<c:otherwise>
								<li style="margin-bottom: 0px;"><a href="/mypageinfo"
									class="d-block">Mypage</a></li>
								<li style="margin-bottom: 0px;"><a href="/logout"
									class="d-block">Logout</a></li>
							</c:otherwise>
						</c:choose>
						<li style="margin-bottom: 0px;"><a href="/cart"
							class="d-block">Cart</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 mb-4 mb-md-0">
				<h2 class="footer-heading">Have a Questions?</h2>
				<div class="block-23 mb-3">
					<ul>
						<li><span class="icon fa fa-map"></span><span class="text">(주) 펫밀리<br> 서울특별시 강남구 언주로 508</span></li>
						<li><a href="#"><span class="icon fa fa-phone"></span><span
								class="text">상담 및 문의전화: <br>1544-9001</span></a></li>
						<li><a href="#"><span class="icon fa fa-paper-plane"></span><span
								class="text">펫밀리 이메일: Petmily06@Petmily.com</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-md-12 text-center">

				<p class="copyright">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Petmily.com</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
</footer>






<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
         <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke="#eeeeee" />
         <circle class="path" cx="24" cy="24" r="22" fill="none"
			stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
</div>


<script src="${path }/resource/js/jquery.min.js"></script>
<script src="${path }/resource/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${path }/resource/js/popper.min.js"></script>
<script src="${path }/resource/js/bootstrap.min.js"></script>
<script src="${path }/resource/js/jquery.easing.1.3.js"></script>
<script src="${path }/resource/js/jquery.waypoints.min.js"></script>
<script src="${path }/resource/js/jquery.stellar.min.js"></script>
<script src="${path }/resource/js/jquery.animateNumber.min.js"></script>
<script src="${path }/resource/js/bootstrap-datepicker.js"></script>
<script src="${path }/resource/js/jquery.timepicker.min.js"></script>
<script src="${path }/resource/js/owl.carousel.min.js"></script>
<script src="${path }/resource/js/jquery.magnific-popup.min.js"></script>
<script src="${path }/resource/js/scrollax.min.js"></script>
<script src="${path }/resource/js/main.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
$(window).scroll(function(){
   if ($(this).scrollTop() > 300){
      $('.btn_gotop').show();
   } else{
      $('.btn_gotop').hide();
   }
});
$('.btn_gotop').click(function(){
   $('html, body').animate({scrollTop:0},400);
   return false;
});
</script>
</body>
</html>