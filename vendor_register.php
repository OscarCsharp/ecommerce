<?php
session_start();
//$cust= $_SESSION['customer'];
include("connection.php");
error_reporting(0);
?>


<!DOCTYPE html>
<html>

<head>
	<title>Vendor Register</title>
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
				<h1 ><a href="index.php"><b>T<br>H<br>E</b>Tsala Store<span>online fashion store</span></a></h1>
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
						<li><a href="login.php"><i class="fa fa-user" aria-hidden="true"></i>Customer Login</a></li>
						<li><a href="vendor-index.php"><i class="fa fa-user" aria-hidden="true"></i>Vendor Login</a></li>
						<li><a href="about.php"><i class="fa fa-file-text-o" aria-hidden="true"></i>About Us</a></li>
						<li><a href="shipping.php"><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
					</ul>
				</div>

			<?php
			}
			?>

<div class="header-ri">
				<ul class="social-top">
					<li><a href="https://wa.me/c/27691931450" class="icon whatsapp"><i class="fa fa-whatsapp" aria-hidden="true"></i><span></span></a></li>
					<li><a href="https://instagram.com/tsalastoree?igshid=YmMyMTA2M2Y=" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="https://twitter.com/TsalaStore?t=FDSWGYwCj7zINIbwDbeLnA&s=09" class="icon dribbble"><i class="fa fa-instagram" aria-hidden="true"></i><span></span></a></li>
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
			<h3>Vendor Register</h3>
			<h4><a href="index.php">Home</a><label>/</label>Vendor Register</h4>
			<div class="clearfix"> </div>
		</div>
	</div>

	<!--login-->

	<div class="login">
		<div class="main-agileits">
			<div class="form-w3agile form1">
				<h3>Vendor Register</h3>
				<form action="" method="get">
					<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<input type="text" value="Username" name="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="Fullname" name="Fullname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Fullname';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-phone" aria-hidden="true"></i>
						<input type="text" value="Phone" name="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="Street Address" name="Street" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Street';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="City" name="City" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="Postal code/ Zipcode" name="PostalCode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Postal Code';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="Bank Account" name="BankAccount" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Bank Account';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" value="Branch Code" name="BranchCode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Branch Code';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i>
						<input type="password" value="Password" name="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="true">
						<div class="clearfix"></div>
					</div>
					<div class="key">
						<i class="fa fa-lock" aria-hidden="true"></i>
						<input type="password" value="Confirm Password" name="ConfirmPassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}" required="true">
						<div class="clearfix"></div>
					</div>
					<input type="submit" name="submit" value="Submit">
				</form>

				<?php
				if ($_GET['submit']) {

					$uname = $_GET['Username'];
					$fullname = $_GET['Fullname'];
					$phone = $_GET['Phone'];
					$street = $_GET['Street'];
					$city = $_GET['City'];
					$postalcode = $_GET['PostalCode'];
					$passwd = $_GET['Password'];
					$cpasswd = $_GET['ConfirmPassword'];
					$bankaccount = $_GET['BankAccount'];
					$branchcode = $_GET['BranchCode'];


					if ($uname != "" && $fullname != "" && $phone != "" && $city != "" && $postalcode != "" && $passwd != "") {

						if ($passwd == $cpasswd) {

							$query = "INSERT INTO vendors values (DEFAULT,'$uname','$fullname','$street','$city','$postalcode','$passwd','$phone','$bankaccount','$branchcode')";
							$data = mysqli_query($conn, $query);

							if ($data == false) {
								echo "All Fields Required ";
							} else {
								$_SESSION['user'] = $uname;
								echo "<script type='text/javascript'>  alert('Vendor Registered Successfully'); </script>";
								echo "<script type='text/javascript'>  window.location='vendor-index.php'; </script>";
							}
						} else {
							echo "Passwords don't match ";
						}
					} else {
						echo "All Fields Required ";
					}
				}

				?>

				<div class="forg">
					<a href="vendor.php" class="forg-right">Already a Vendor?</a>
					<div class="clearfix"></div>
				</div>

			</div>
		</div>
	</div>
	<!--footer-->
	<?php include_once("footer.php"); ?>
	<!-- //footer-->


	<script type="text/javascript">

	</script>


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