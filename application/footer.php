<?php
session_start();

include("connection.php");
error_reporting(0);

$cust = $_SESSION['customer'];
?>

<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-grid ">
			<h3>Menu</h3>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="#">Special Offers</a></li>
				<li><a href="#">Fashion</a></li>
				<li><a href="#">Accessories</a></li>
				<li><a href="about.php">About Us</a></li>
				<li><a href="contact.php">Contact Us</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>Customer Services</h3>
			<ul>
				<li><a href="shipping.php">Shipping</a></li>
				<li><a href="terms.php">Terms & Conditions</a></li>
				<li><a href="faqs.php">FAQs</a></li>
				<li><a href="contact.php">Contact</a></li>
				<li><a href="privacy.php">Privacy Policy</a></li>

			</ul>
		</div>
		<?php
		if (isset($_SESSION['customer'])) {

		?>
			<div class="col-md-3 footer-grid">
				<h3>My Account</h3>
				<ul>
					<li><a href="order.php">My Orders</a></li>
					<li><a href="cust-logout.php">Logout</a></li>

				</ul>
			</div>
		<?php
		} else {
		?>
			<div class="col-md-3 footer-grid">
				<h3>My Account</h3>
				<ul>
					<li><a href="login.php">Login</a></li>
					<li><a href="register.php">Register</a></li>
					<li><a href="vendor-index.php">Vendor Login</a></li>

				</ul>
			</div>




		<?php
		}

		?>

		<div class="col-md-3 footer-grid">
			<img src="images/Tsala Logo.png" alt="..." class="img-thumbnail">
		</div>
		<div class="clearfix"></div>

		<div class="copy-right">
			<p> &copy; Tsala Store. All Rights Reserved </a></p>
		</div>
	</div>
</div>