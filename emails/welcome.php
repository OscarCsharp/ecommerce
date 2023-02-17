<?php
require './phpmailer/PHPMailerAutoload.php';

function send_email($vendor, $item, $qty, $pay_id, $sbuyer_name, $sbuyer_phone, $address){
$mail = new PHPMailer;

$htmlversion= "Welcome";
$textversion= 'Order Received';

//$mail->SMTPDebug = 3;                               // Enable verbose debug output

$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'oscarndlovu01@gmail.com';                 // SMTP username
$mail->Password = 'Oscar@01**';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to

$mail->setFrom('oscarndlovu01@gmail.com', 'Grocery Store');
$mail->addAddress($vendor);               // Name is optional

$mail->isHTML(true);

$mail->Subject = 'Order Received';
$mail->Body    = $htmlversion;
$mail->AltBody = $textversion;

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    /*echo 'Message has been sent';*/
}
}