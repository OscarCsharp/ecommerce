<?php

//---------------------------------------------------------------------------------------------------//

session_start();
/*ini_set('display_errors', 1);*/
$cust_name= $_POST['cust_name'];
$allvalues= $_SESSION['kela'];
$total= $_POST['total_price'];
$delivery= $_POST['delivery'];
$pay_type= $_POST['pay_type'];

$address= $_POST['address'];
$country= $_POST['country'];
$provice= $_POST['provice'];
$zip= $_POST['zip'];
$firstname= $_POST['firstName'];
$lastname= $_POST['lastName'];

$delivery_address = $address . ' ' .$provice . ' ' . $country . ' ' . $zip ;
//print_r($cust_name);
$some= json_decode($allvalues);
$sent= array();

$items = array();
		foreach($some as $arr) {
		    foreach($arr as $key => $value) {
		        $items[$key] = $value;
		    }
		    /*print_r($items);
		    echo "<br />";*/
		}
if($delivery == 1){
	$total= $total + 50;
}
elseif($delivery == 2) {
			$total= $total + 150;
		}

$_SESSION['del']= $delivery;


if($pay_type ==1){

	try {
       
		// Construct variables
$cartTotal = $total+00.00 ;// This amount needs to be sourced from your application
$data = array(
    // Merchant details
	//'merchant_id' => '15801468', 
   // 'merchant_key' => '1s3d6e1pi5ko8',
    'merchant_id' => '10000100',
    'merchant_key' => '46f0cd694581a',
    'return_url' => 'https://tsalastore.co.za/pay_success.php',
    'cancel_url' => 'http://www.yourdomain.co.za/cancel.php',
    'notify_url' => 'http://www.yourdomain.co.za/notify.php',
    // Buyer details
    'name_first' => $firstname,
    'name_last'  => $lastname,
    'email_address'=> $cust_name,
    // Transaction details
    'm_payment_id' => $cust_name, //Unique payment ID to pass through to notify_url
    'amount' => number_format( sprintf( '%.2f', $cartTotal ), 2, '.', '' ),
    'item_name' => 'TS_Order#
    '
);


//$signature = generateSignature($data);
//$data['signature'] = $signature;

// If in testing mode make use of either sandbox.payfast.co.za or www.payfast.co.za
$testingMode = true;
//$pfHost = $testingMode ? 'sandbox.payfast.co.za' : 'www.payfast.co.za';
$pfHost = $testingMode ? 'sandbox.payfast.co.za' : 'www.payfast.co.za';
$htmlForm = '<form action="https://'.$pfHost.'/eng/process" method="post">';
foreach($data as $name=> $value)
{
    $htmlForm .= '<input name="'.$name.'" type="hidden" value=\''.$value.'\' />';
};
$htmlForm .= '<input type="submit" value="Pay Now" /></form>';
//echo $htmlForm; 
	
	}
	catch (Exception $e) {
	    print('Error: ' . $e->getMessage());
	}
}
else{
	//header("location:order_success.php");
}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link rel="stylesheet" href="css/main.css">
	<style>
		@import url("https://fonts.googleapis.com/css?family=Raleway:400,700,900");
* {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

body {
    font-family: "Raleway", sans-serif;
    margin: 0;
    padding: 0;
    background-color: #fbfbfb;
    color: #272727;
}

.background-image {
    height: calc(100vh + 400px);
    width: calc(200vw + 400px);
    position: absolute;
    top: 0;
    left: -400px;
    z-index: -1;
    background: url(https://www.toptal.com/designers/subtlepatterns/patterns/funky-lines.png);
    -webkit-animation: backgroundscroll 30s linear infinite;
    animation: backgroundscroll 30s linear infinite;
}

.animated-bg-container {
    overflow: hidden;
    height: 100vh;
    width: 100vw;
    position: absolute;
    z-index: -1;
}

@-webkit-keyframes backgroundscroll {
    to {
        -webkit-transform: translate(400px, -400px);
        transform: translate(400px, -400px);
    }
}

@keyframes backgroundscroll {
    to {
        -webkit-transform: translate(400px, -400px);
        transform: translate(400px, -400px);
    }
}

/* icon animation */

.icon-container {
    display: flex;
    height: 100vh;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 400px;
}

.icon {
    width: 320px;
    height: 320px;
    background-color: #272727;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
}

.inner-icon {
    width: 200px;
    margin-left: 50px;
    margin-bottom: 32px;
}

.icon-label {
    text-align: center;
}

.icon-label h1 {
    margin-bottom: 0;
}

@-webkit-keyframes slidecard {
    0% {
        -webkit-transform: translate(170px, -60px) rotate(90deg);
        transform: translate(170px, -60px) rotate(90deg);
        -webkit-transform-origin: 420px 130px;
        transform-origin: 420px 130px;
    }
    40% {
        -webkit-transform: translate(60px, -20px) rotate(0deg);
        transform: translate(60px, -20px) rotate(0deg);
        -webkit-transform-origin: 500px 130px;
        transform-origin: 500px 130px;
    }
    60% {
        -webkit-transform: translate(0px, 0px);
        transform: translate(0px, 0px);
    }
    100% {
        -webkit-transform: translate(0px, 400px);
        transform: translate(0px, 400px);
    }
}

@keyframes slidecard {
    0% {
        -webkit-transform: translate(170px, -60px) rotate(90deg);
        transform: translate(170px, -60px) rotate(90deg);
        -webkit-transform-origin: 420px 130px;
        transform-origin: 420px 130px;
        animation-timing-function: ease;
    }
    15% {
        -webkit-transform: translate(60px, -20px) rotate(0deg);
        transform: translate(60px, -20px) rotate(0deg);
        -webkit-transform-origin: 500px 130px;
        transform-origin: 500px 130px;
        animation-timing-function: ease;
    }
    25% {
        -webkit-transform: translate(0px, 0px);
        transform: translate(0px, 0px);
        animation-timing-function: ease;
    }
    40% {
        -webkit-transform: translate(0px, 400px);
        transform: translate(0px, 490px);
        animation-timing-function: ease;
    }
    50% {
        transform: translate(140px, 481px) rotate(10deg);
        transform-origin: 340px 176px;
        animation-timing-function: linear;
    }
    60% {
        transform: translate(294px, -29px) rotate(72deg);
        transform-origin: 340px 176px;
        animation-timing-function: ease;
    }
    75% {
        -webkit-transform: translate(170px, -60px) rotate(90deg);
        transform: translate(170px, -60px) rotate(90deg);
        -webkit-transform-origin: 420px 130px;
        transform-origin: 420px 130px;
        animation-timing-function: ease;
    }
}

svg g#card {
    -webkit-transform: translate(170px, -60px) rotate(90deg);
    transform: translate(170px, -60px) rotate(90deg);
    -webkit-transform-origin: 420px 130px;
    transform-origin: 420px 130px;
    -webkit-animation: slidecard 2s ease .5s infinite;
    animation: slidecard 4s 2s infinite;
}

/* svg g#card {
    transform: translate(210px, -29px) rotate(32deg);
    transform-origin: 340px 176px;
} */

	</style>
</head>
<body>


    <div class="animated-bg-container">
        <div class="background-image"></div>
    </div>
    <div class="icon-container">
        <div class="icon">
            <div class="inner-icon">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                    viewBox="0 0 756 858" enable-background="new 0 0 756 858" xml:space="preserve">
                    <path id="bottomslide" fill="#3BDBCC" d="M495.8,541.9h-84.5c-1.1,0-2-0.9-2-2V342.5c0-1.1,0.9-2,2-2h84.5c1.1,0,2,0.9,2,2v197.5
	C497.8,541,496.9,541.9,495.8,541.9z" />
                    <g id="card" v-bind:class="{'animate':step === 'stepfive'}">
                        <path fill="#E5E5E5" d="M556,123.2v199.9c0,1.1-0.9,2-2,2H430.7c-1.1,0-2-0.9-2-2V123.2c0-1.1,0.9-2,2-2H554
		C555.1,121.2,556,122.1,556,123.2z" />

                        <rect x="351.2" y="209.5" transform="matrix(6.123234e-17 -1 1 6.123234e-17 230.0159 676.2959)" fill="#303030" width="203.9"
                            height="27.2" />

                        <rect x="430.5" y="213.9" transform="matrix(6.123234e-17 -1 1 6.123234e-17 274.1384 720.4184)" fill="#FFFFFF" width="133.5"
                            height="18.5" />

                        <rect x="484.3" y="171.1" transform="matrix(6.123234e-17 -1 1 6.123234e-17 323.1085 671.4483)" fill="#A0A0A0" width="26"
                            height="6.2" />

                        <rect x="528.8" y="288.5" transform="matrix(6.123234e-17 -1 1 6.123234e-17 250.194 833.3431)" fill="#A0A0A0" width="26" height="6.2"
                        />

                        <rect x="501.6" y="226.7" transform="matrix(6.123234e-17 -1 1 6.123234e-17 311.9859 771.5512)" fill="#A0A0A0" width="80.3"
                            height="6.2" />
                    </g>
                    <g id="machine">
                        <path id="topslide" fill="#24A097" d="M483.6,546.2h-84.5c-1.1,0-2-0.9-2-2v-206c0-1.1,0.9-2,2-2h84.5c1.1,0,2,0.9,2,2v206
		C485.6,545.3,484.7,546.2,483.6,546.2z" />
                        <path fill="#5ED3CA" d="M426.6,794.8h-304c-1.1,0-2-0.9-2-2V316.7c0-1.1,0.9-2,2-2h304c1.1,0,2,0.9,2,2v476.1
		C428.6,793.9,427.7,794.8,426.6,794.8z" />
                        <path fill="#A4F4EE" d="M422.6,786.2H126c-3.3,0-6-2.7-6-6V271.5c0-3.3,2.7-6,6-6h296.6c3.3,0,6,2.7,6,6v508.8
		C428.6,783.5,425.9,786.2,422.6,786.2z" />
                        <rect x="120" y="295.5" fill="#5ED3CA" width="308.6" height="495.1" />
                        <rect x="146.8" y="295.5" fill="#24A097" width="255" height="499.3" />
                        <rect x="171.4" y="325.5" fill="#F9F9F9" width="205.7" height="158.6" />
                        <g>
                            <g>
                                <path fill="#6FC1B9" d="M229.4,537.6H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,536.7,230.5,537.6,229.4,537.6z" />
                                <path fill="#6FC1B9" d="M302.6,537.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,536.7,303.7,537.6,302.6,537.6z" />
                                <path fill="#6FC1B9" d="M375.8,537.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,536.7,376.9,537.6,375.8,537.6z" />
                            </g>
                            <g>
                                <path fill="#6FC1B9" d="M229.4,582.6H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,581.7,230.5,582.6,229.4,582.6z" />
                                <path fill="#6FC1B9" d="M302.6,582.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,581.7,303.7,582.6,302.6,582.6z" />
                                <path fill="#6FC1B9" d="M375.8,582.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,581.7,376.9,582.6,375.8,582.6z" />
                            </g>
                            <g>
                                <path fill="#6FC1B9" d="M229.4,627.6H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,626.7,230.5,627.6,229.4,627.6z" />
                                <path fill="#6FC1B9" d="M302.6,627.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,626.7,303.7,627.6,302.6,627.6z" />
                                <path fill="#6FC1B9" d="M375.8,627.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,626.7,376.9,627.6,375.8,627.6z" />
                            </g>
                            <g>
                                <path fill="#6FC1B9" d="M229.4,672.6H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,671.7,230.5,672.6,229.4,672.6z" />
                                <path fill="#6FC1B9" d="M302.6,672.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,671.7,303.7,672.6,302.6,672.6z" />
                                <path fill="#6FC1B9" d="M375.8,672.6h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,671.7,376.9,672.6,375.8,672.6z" />
                            </g>
                        </g>
                        <g>
                            <g>
                                <path fill="#A4F4EE" d="M229.4,531.2H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,530.3,230.5,531.2,229.4,531.2z" />
                                <path fill="#A4F4EE" d="M302.6,531.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,530.3,303.7,531.2,302.6,531.2z" />
                                <path fill="#A4F4EE" d="M375.8,531.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,530.3,376.9,531.2,375.8,531.2z" />
                            </g>
                            <g>
                                <path fill="#A4F4EE" d="M229.4,576.2H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,575.3,230.5,576.2,229.4,576.2z" />
                                <path fill="#A4F4EE" d="M302.6,576.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,575.3,303.7,576.2,302.6,576.2z" />
                                <path fill="#A4F4EE" d="M375.8,576.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,575.3,376.9,576.2,375.8,576.2z" />
                            </g>
                            <g>
                                <path fill="#A4F4EE" d="M229.4,621.2H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,620.3,230.5,621.2,229.4,621.2z" />
                                <path fill="#A4F4EE" d="M302.6,621.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,620.3,303.7,621.2,302.6,621.2z" />
                                <path fill="#A4F4EE" d="M375.8,621.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,620.3,376.9,621.2,375.8,621.2z" />
                            </g>
                            <g>
                                <path fill="#A4F4EE" d="M229.4,666.2H174c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C231.4,665.3,230.5,666.2,229.4,666.2z" />
                                <path fill="#A4F4EE" d="M302.6,666.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C304.6,665.3,303.7,666.2,302.6,666.2z" />
                                <path fill="#A4F4EE" d="M375.8,666.2h-55.3c-1.1,0-2-0.9-2-2v-21.7c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v21.7
				C377.8,665.3,376.9,666.2,375.8,666.2z" />
                            </g>
                        </g>
                        <g>
                            <path fill="#C6C6C6" d="M229.4,743.4H174c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C231.4,742.5,230.5,743.4,229.4,743.4z" />
                            <path fill="#C6C6C6" d="M302.6,743.4h-55.3c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C304.6,742.5,303.7,743.4,302.6,743.4z" />
                            <path fill="#C6C6C6" d="M375.8,743.4h-55.3c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C377.8,742.5,376.9,743.4,375.8,743.4z" />
                        </g>
                        <g>
                            <path fill="#FFFFFF" d="M229.4,736.9H174c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C231.4,736,230.5,736.9,229.4,736.9z" />
                            <path fill="#FFFFFF" d="M302.6,736.9h-55.3c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C304.6,736,303.7,736.9,302.6,736.9z" />
                            <path fill="#FFFFFF" d="M375.8,736.9h-55.3c-1.1,0-2-0.9-2-2v-28.1c0-1.1,0.9-2,2-2h55.3c1.1,0,2,0.9,2,2v28.1
			C377.8,736,376.9,736.9,375.8,736.9z" />
                        </g>
                    </g>
                </svg>
            </div>
        </div>
        <div class="icon-label">
            <h2>Proceed with Online Payment</h2>
			<?= $htmlForm ;?>
        </div>
    </div>

</body>
</html>





