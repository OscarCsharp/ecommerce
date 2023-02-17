<?php 
session_start();

include("connection.php");
error_reporting(0);

$cust= $_SESSION['customer'];
?>

<!DOCTYPE html>
<html>
<head>
<title>Privacy Policy</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Terms and Conditions" />
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
		<h3 >Privacy Policy</h3>
		<h4><a href="index.php">Home</a><label>/</label>Policy</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--- terms ---->
			<div class="terms">
				<div class="container">
					
					<div class="spec ">
					<h3>Privacy Policy</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
					<div class="ter-wthree">
						
                   <h6> 1.	INFORMATION ACCURACY </h6>
<p>1.1	We do our best to ensure that the information you provide us with in this SITE is protected at any cost and we shall have no authority to use any of your information data for our own benefits without your consent. </p>
<p>1.2	All products services, specifications, prices, and descriptions in this site can change at any time without notice. </p>
<p>1.3	The inclusive of any product in this SITE at a particular time does not guarantee the availability of the product or service at any time. </p>

<h6>2.	TERMS OF USE </h6>
<p>2.1	Users use of the SITEs, any content, and any information provided by the user including user names and passwords, addresses, email addresses, phone number, financial information (such as Credit/Debit card numbers), information related to TSALA STORE or employer name (“User information”) transmitted in connection with the SITEs is limited to the contemplated functionality of the SITEs.</p>
<p>2.2	In no event may the SITEs be used in a manner that,</p>
<p>(a) Harasses, abuses, stalks, threatens, defame, or otherwise infringes or violates the rights of any other party (including but not limited to the rights of publicity or other proprietary rights)</p>
<p>(b) Provides sensitive personal information unless specifically requested by TSALA STORE</p>
<p>(c) Includes spam or any unsolicited advertising </p>
<p>(d) Uses technology or other means to access TSALA STORE or content that is not authorized by TSALA </p>
<p>(e) Uses or launches any automated system, including without limitation, “robots”, “spiders”, or “offline readers”, to access TSALA STORE or our content</p>
<p>(f) Is unlawful, fraudulent, or deceptive.</p>
<p>2.3	TSALA STORE reserves the right in it is sole discretion, to terminate any user license, terminate any User’s participation in the SITEs, remove content, or assert legal action with respect to content or use of the SITEs, that TSALA STORE reasonably believes is or might be violation of these terms, or TSALA STORE policies. </p>
<p>2.4	TSALA STORE failure or delay in taking such actions does not constitution a waiver of it is rights enforce these terms.</p>

<h6>3.	PAYMENT TERMS </h6>
<p>3.1 REFUND/RETURNS</p>
<p>3.1.1	Returns is appropriate and shall be requested in 10 working days after you received goods.</p>
<p>3.1.2	Refund will be processed after 5 working days after we have received the goods back.</p>
<p>3.1.3	It is mandatory for you to pay for return/refund fee.</p>
<p>3.1.4	The product must be in the same condition of purchase, clean and undamaged in any way.</p>

<h6>4.	COLLECTION OF GOODS </h6>
<p>4.1	If any goods from TSALA STORE have not been accepted or collected by the receipt within a reasonable time after the tender thereof and for the purpose thereof notification to the recipient or its nominee of the fact that the goods are available for collection or that TCG is willing to deliver the goods shall be deemed to be a good and sufficient tender.</p>
<p>4.2	TCG shall notify TSALA STORE at its legal address and after expiration of (10) days from the posting to that address of such written notice and unless TSALA STORE will give instructions to redeliver the goods at customer’s expense, TCG shall be entitled and authorized irrevocably to sell or dispose of the goods and retain from the proceed of charges, expenses and costs incurred in the carriage thereof.</p>

<h6>5.	DELIVERY OF GOODS </h6>
<p>5.1	The onus of establishing the conditions of the goods at the right time of delivery thereof by TCG shall rest with TSALA STORE, without limiting the generality of the foregoing.</p>
<p>5.2	TCG shall be entitled to delay the dispatch of any goods or expedite the date of dispatch if they, in the sole discretion of TCG, consider it necessary for the safety of the goods or if, in the sole discretion of TCG , there  is a backlog of goods with higher priority or any other reason, TCG will only deliver goods that are the property of TSALA STORE and TSALA STORE warrant that it is authorized to accept and accepting these conditions not only on behalf of itself, but also as an agent for on behalf of all other people who become interested in the goods.</p>
<p>5.3	TSALA STORE will undertake to indemnity against any damages, costs and expenses resulting from any breach of this warrantee. </p>

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