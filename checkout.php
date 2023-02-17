<?php 
session_start();

include("connection.php");
error_reporting(0);

if(!isset($_SESSION['customer']))
{
	header("location:login.php");
}

$cust= $_SESSION['customer'];
?>

<!DOCTYPE html>
<html>

<head>
    <title>Customer Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Dancing+Script" rel="stylesheet">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

    <!-- (Optional) Latest compiled and minified JavaScript translation files -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/i18n/defaults-*.min.js"></script>
</head>

<body class="container">

    <form action="pay.php" method="post">
        <div class="row">


            <div class="container">
                <div class="py-5 text-center">

                    <h2>Checkout form</h2>

                </div>

                <div class="row">
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Your cart</span>
                        </h4>

                        <?php
	                        if(isset($_GET['array']) && isset($_GET['total']))
	                        {
		                          $some= json_decode($_GET['array']);
		                          $_SESSION['kela']= $_GET['array'];
		                          /*echo gettype($some);*/
		                          $tot= $_GET['total'];
	                        }
	                        else{
		                          header("location:index.php");
	                        }

    
		                     $items = array();
		                     foreach($some as $arr) {
		                     foreach($arr as $key => $value) {
		                           $items[$key] = $value;
		                      }
		                    ?>
                                <input type="hidden" name="cust_name" value="<?php echo $cust; ?>">
                                 <input type="hidden" name="total_price" value="<?php echo $tot; ?>">
                               <?php 
		                      }
                              
                            ?>
                                            
                            <p class="list-group-item d-flex justify-content-between">
                                <span>Total (ZAR)</span>
                                <strong>R <?php echo $_GET['total'];?></strong>
                            <p>
                        

                        <div class="text-center text-danger mb-3" style="padding-top: 20px;">
            <h4>
                <img src="./images/delivery-truck.png" alt="" style="height:50px; width: 50px;">
                Choose Delivery Method
            </h4>
            <select class="selectpicker" name="delivery">
                <option value="1">Pep (+ R130 )</option>
                <option value="1">Postnet (+ R100 )</option>
                <option value="2">The Courier Guy (+ R135 )</option>
            </select>
        </div>

        <div class="text-center text-success mb-3" style="padding-top: 20px;">
            <h4>
                <img src="./images/pay.png" alt="" style="height:50px; width: 50px;">
                Choose Payment Method
            </h4>
            <select class="selectpicker" name="pay_type">
                <option value="1">Online Payment</option>
                <option value="2">CoD (Cash on Delivery)</option>
            </select>
        </div>

        <div class="text-center text-danger mb-5">
            <button name="payment" class="btn btn-info">Confirm & Pay R <?php echo $tot+$_GET['delivery'];?> + Shipping </button>
        </div>


                    </div>

                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Shipping Information</h4>
                        <div class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">First name</label>
                                    <input type="text" name="firstName" class="form-control" id="firstName" placeholder="" value=""
                                        required>
                                    <div class="invalid-feedback">
                                        Valid first name is required.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Last name</label>
                                    <input type="text" name="lastName" class="form-control" id="lastName" placeholder="" value=""
                                        required>
                                    <div class="invalid-feedback">
                                        Valid last name is required.
                                    </div>
                                </div>
                            </div>


                            <div class="mb-3">
                                <label for="email">Email <span class="text-muted"></span></label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address">Address</label>
                                <input  name="address" type="text" class="form-control" id="address" placeholder="1234 Main St"
                                    required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">Country</label>
                                    <select name="country" class="custom-select d-block w-100" id="country" required>
                                        <option value="">Choose...</option>
                                        <option>South Africa</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="provice">Province</label>
                                    <select name="provice" class="custom-select d-block w-100" id="provice" required>
                                        <option value="">Choose...</option>
                                        <option>Gauteng</option>
                                        <option>Limpopo</option>
                                        <option>Free State</option>
                                        <option>North West</option>
                                        <option>Mpumalanga</option>
                                        <option>Western Cape</option>
                                        <option>Eastern Cape</option>
                                        <option>Northern Cape</option>
                                        <option>Kwazulu Natal</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please provide a valid state.
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip</label>
                                    <input name="zip" type="text" class="form-control" id="zip" placeholder="" required>
                                    <div class="invalid-feedback">
                                        Zip code required.
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

        </div>
       
    </form>



</body>

</html>