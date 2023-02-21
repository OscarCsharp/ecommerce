<?php 
session_start();

include("connection.php");
error_reporting(0);

$cust= $_SESSION['customer'];
?>

<!DOCTYPE html>
<html>
<head>
<title>Terms and Conditions</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Tsala Store" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
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
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
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
			if(isset($_SESSION['customer']))
			{
				
			?>
			<div class="header">
				<b>Welcome </b><b style="color: green;"><?php echo $cust; ?></b>
			</div>

			<div class="head-t">
				<ul class="card">
					<li><a href="order.php" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Orders</a></li>
					<li><a href="about.php" ><i class="fa fa-file-text-o" aria-hidden="true"></i>About Us</a></li>
					<li><a href="shipping.php" ><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
					<li><a href="cust-logout.php" ><i class="fa fa-user" aria-hidden="true"></i>Logout</a></li>
				</ul>	
			</div>

			<?php
			}

			else{
				?>

			<div class="head-t">
				<ul class="card">
					<li><a href="login.php" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
					<li><a href="register.php" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					<li><a href="about.php" ><i class="fa fa-file-text-o" aria-hidden="true"></i>About Us</a></li>
					<li><a href="shipping.php" ><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
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
		<h3 >Terms and Conditions</h3>
		<h4><a href="index.php">Home</a><label>/</label>T&C</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--- terms ---->
			<div class="terms">
				<div class="container">
					
					<div class="spec ">
					<h3>Terms and Conditions</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
					<div class="ter-wthree">
						<h6><span>1.</span> TERMS OF SALE</h6>
						<p>1.1	By placing an order with us, you are therefore offering to purchase a product representing that all information you provide to us in connection with such order is true, and accurate and you are an authorized user of the payment you provide to us, and representing that you are of legal age to form a binding contract.</p>
                        <p>    1.2	Foregoing to our order acceptance, confirmation of information may be required. We reserve the right at any time after receipt of your order to accept, modify or decline your order, or any portion therefore, even after your receipt of an order confirmation from us, for any reason whatsoever. </p>
                         <p>   1.3	 We are authorized to refuse any order made by you for any reason that might affect both (us) and you, or any of us (between (us) and you). </p>

					</div>
					<div class="ter-wthree">
						<h6><span>2.</span> INTELLECTUAL PROPERTY</h6>
						<p>2.1	The SITE and all of its material, including, but not limited to, it’s software or HTML code, scripts, text, artwork, photographs, images, videos, and audio (Collectively “Material”) are protected by copyright laws and other SA and international laws and are property of TSALA STORE or its licensors.</p>
<p>2.2	 All materials are provided through the SITE as a service to its current and prospective visitors and may be used only for personal and informational purposes and only if you also retain all copyright and other proprietary notices contained on the materials. </p>
<p>2.3	No rights, title or interest on TSALA STORE materials is conveyed to you. </p>
<p>2.4	You may not copy, reproduce, publish, transmit, distribute, perform, display, post, modify, create derivate works from sell, license or otherwise exploit the SITE or any of its materials without our prior written permission.</p>
<p>2.5	You may not access or use the SITE for any competitive or commercial purpose, nor may you permit any copying of our materials. Any unauthorized copying, alteration, distribution transmission, performance, display or other use of these materials is prohibited.</p>
<p>2.6	Any and other rights not expressly granted are reserved by TSALA STORE as applicable.</p>


					</div>
					<div class="ter-wthree">
						<h6><span>3.</span> DISCLAIMER OF LIABILITY</h6>
						<p>3.1	The disclaimer of liability applies to any damages or injury caused by any failure of performance, error, omission, interruption, or transmission, computer virus, communication line failure, theft or destruction or unauthorized access to alteration of, or use of record, whether for breach of contract, tortious behavior, negligence, or under any other cause of action Customer specifically acknowledges the service is not liable for the defamatory, offensive of illegal conduct of other customers or third-parties and that the rust of injury from the foregoing rests entirely with customers. </p>
<p>3.2	Neither the service nor any of its Agents, affiliates or content providers shall be liable for any direct, indirect, incidental, special or consequential damages out of use of the service or inability to gain access to or use the service or out any breach of any warranty customer hereby acknowledges that the provisions of this section shall apply to all content on the service.  </p>

					</div>
					<div class="ter-wthree">
						<h6> <span>4.</span> EXTERNAL LINKS</h6>
						<p>4.1	External links regarding third parties are out of our control and usage will be at your own risk.</p> 
					</div>
					<div class="ter-wthree">
						<h6><span>5.</span> ONDITIONS OF CARRIAGE</h6>
						<p>5.1	TSALA STORE will be strictly attached to TCG.</p>
						<p>5.2	TSALA STORE will have to confirm that it does not rely upon any other terms, warranties, conditions or representations relating to the use of the service under this agreement.</p>
						<p>5.3	TSALA STORE will be bound by signature of any of its employees on the TCG Waybill.</p>
						<p>5.4	TSALA STORE goods are accepted subject to the conditions stipulated by all other carriers, sub-contractors, handlers and any other parties into whose possession or custody they may pass to finalize and deliver goods that come into their possession.</p>


					</div>
					<div class="ter-wthree">
						<h6><span>6.</span> OPERATIONAL PROCEDURES</h6>
						<p>6.1	TCG reserves the right to transport goods received from TSALA STORE by means of its disposal and may use carrier to perform its all duties, all goods that require forwarding to facilitate delivery may be held at TCG’s discretion and TSALA STORE’s costs until suitable delivery arrangements can be arranged. </p>
					</div>
					
					<div class="ter-wthree">
						<h6><span>7.</span> COSTS OF CARRIAGE/DELIVERY</h6>
						<p>7.1 TSALA STORE shall be liable for all costs incurred by TCG in the recovery of any amount or the enforcements of any rights which it has hereunder, including collection charges and costs on an attorney and own client scale and costs of counsels as on brief whether incurred prior to or during the institution of legal proceedings or judgment has been granted in connection with the satisfaction or enforcement. </p>
						<p>7.2 TSALA STORE will have to undertake to pay the cost of the surety ship and cession contained herein including stamp duty payable thereon and agrees that such costs can be debited in our account. <p>

					</div>

					<div class="ter-wthree">
						<h6><span>8.</span> PAYMENT DISPUTES </h6>
					   <p> 8.1	Payment made cannot be reversed until you receive your parcel. </p>
					   <p>8.2	Mistake made on a payment is reserved to our authority therefore you cannot change anything unless otherwise you contact us.  </p>

					</div>


				</div>
			</div>
			<!--- /terms ---->
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
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>

</body>
</html>