<?php
session_start();

include("connection.php");
error_reporting(0);

$cust = $_SESSION['customer'];
?>

<!DOCTYPE html>
<html>

<head>
	<title>Tsala Store</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta property="og:title" content="Vide" />
	<meta name="keywords" content="Tsala Store" />
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //for-mobile-apps -->
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- Custom Theme files -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- js -->
	<script src="js/jquery-1.11.1.min.js"></script>
	<!-- //js -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
	<!--- start-rate---->
	<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
	<script type="text/javascript">
		jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
				starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
				}).bind('starbox-value-changed', function(event, value) {
					if (starbox.hasClass('random')) {
						var val = Math.random();
						starbox.next().text(' ' + val);
						return val;
					}
				})
			});
		});
	</script>
	<!---//End-rate---->

</head>

<body>

	<div class="header">

		<div class="container">

			<div class="logo">
				<h1><a href="index.php"><b>T<br>H<br>E</b>Tsala Store<span>online fashion store</span></a></h1>
			</div>

			<?php
			if (isset($_SESSION['customer'])) {

			?>
				<div class="header">
					<b>Welcome </b><b style="color: green;"><?php echo $cust; ?></b>
				</div>

				<div class="head-t">
					<ul class="card">
						<li><a href="order.php"><i class="fa fa-arrow-right" aria-hidden="true"></i>Orders</a></li>
						<li><a href="shipping.php"><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
						<li><a href="cust-logout.php"><i class="fa fa-user" aria-hidden="true"></i>Logout</a></li>
					</ul>
				</div>

			<?php
			} else {
			?>

				<div class="head-t">
					<ul class="card">
						<li><a href="login.php"><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
						<li><a href="register.php"><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					</ul>
				</div>

			<?php
			}

			?>

			<div class="header-ri">
				<ul class="social-top">
					<li><a href="https://wa.me/c/27691931450" class="icon whatsapp"><i class="fa fa-whatsapp" aria-hidden="true"></i><span></span></a></li>
					<li><a href="https://twitter.com/TsalaStore?t=FDSWGYwCj7zINIbwDbeLnA&s=09" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="https://instagram.com/tsalastoree?igshid=YmMyMTA2M2Y=" class="icon dribbble"><i class="fa fa-instagram" aria-hidden="true"></i><span></span></a></li>
				</ul>
			</div>



			<?php include_once("top.php"); ?>

		</div>

	</div>
	</div>
	<!---->
	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h3>About</h3>
			<h4><a href="index.php">Home</a><label>/</label>About</h4>
			<div class="clearfix"> </div>
		</div>
	</div>

	<!-- faqs -->
	<div class="about-w3 ">


		<!--about-->
		<div class="container">
			<div class="about">
				<div class="spec ">
					<h3>About</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
				</div>

				<div class="grid_3 grid_4 wow fadeInLeft animated" data-wow-delay=".5s">

					<div class="bs-example">
						<div class="mb-60">

							<p>The Tsala Store is a company/store that was established as Tsala Online Clothing in Sep 2020
							 by three (3) South African young men believing to elevate and help the South African fashion sense and market in distributing and maintaining South African clothing quality brands. It was later reformed as The Tsala Store in November 2021 with the purpose of distributing and serving the people of South Africa with quality sneakers, clothes, laptops, phones, watches and many more other quality products. It is an E-commerce store that was established to be the market leader in online fashion and many other products sales around South Africa.</p>
							<p>We present our customers with the best customer service and quality products of different kinds. We currently cater all sizes and age groups at an affordable price. As one of the best and reliable online store around South Africa, we offer free delivery for orders exceeding R1,000.00.</p>

						</div>
					</div>
				</div>


				<div class="clearfix"> </div>
			</div>
		</div>
		<!--//about-->



	</div>
	<!-- // Terms of use -->

	<!--footer-->
	<?php include_once("footer.php"); ?>
	<!-- //footer-->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //smooth scrolling -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script type="text/javascript">
		$(function() {

			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({
					"position": "fixed",
					"z-index": "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
					top: position.top,
					left: position.left
				}, 500, "linear", function() {
					$image.remove();
				});
			}

			$('.my-cart-btn').myCart({
				classCartIcon: 'my-cart-icon',
				classCartBadge: 'my-cart-badge',
				affixCartIcon: true,
				checkoutCart: function(products) {
					$.each(products, function() {
						console.log(this);
					});
				},
				clickOnAddToCart: function($addTocart) {
					goToCartIcon($addTocart);
				},
				getDiscountPrice: function(products) {
					var total = 0;
					$.each(products, function() {
						total += this.quantity * this.price;
					});
					return total * 1;
				}
			});

		});
	</script>

</body>

</html>