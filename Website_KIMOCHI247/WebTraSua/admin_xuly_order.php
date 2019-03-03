<?php 
	include('controller/c_admin.php');

	$c_admin = new C_Admin();
	//get mã hóa đơn
	$mahd = $_GET['mahd'];
	// tạo các dữ liệu cho mail
	$to1 = $_GET['to'];
    $sb = "KIMOCHI milktea";   
    $body = "Đơn hàng của bạn đã được xác nhận .Hàng sẽ được chuyển đến sau 30 phút. Rất cảm ơn đã ủng hộ KiMoChi";
	date_default_timezone_set('Etc/UTC');
		require 'smtpmail/PHPMailerAutoload.php';
		$mail = new PHPMailer();
		$mail->isSMTP();

		$mail->SMTPDebug = 2;

		$mail->Debugoutput = 'html';

		$mail->Host = 'smtp.gmail.com';

		$mail->Port = 587;

		$mail->SMTPSecure = 'tls';

		$mail->SMTPAuth = true;

		$mail->Username = "sanglun2254@gmail.com";

		$mail->Password = "sang2254";
		//Create a new PHPMailer instance

		//Set who the message is to be sent from
		$mail->setFrom('sanglun2254@gmail.com', 'Sang Nguyen');
		//Set an alternative reply-to address
		$mail->addReplyTo('sanglun2254@gmail.com', 'Sang Nguyen');
		//Set who the message is to be sent to
		$mail->addAddress($to1);
		//Set the subject line
		$mail->Subject = $sb;
		//Read an HTML message body from an external file, convert referenced images to embedded,
		//convert HTML into a basic plain-text alternative body
		$mail->msgHTML($body);
		//Replace the plain text body with one created manually
		//$mail->AltBody = 'This is a plain-text message body';
		//Attach an image file
		//$mail->addAttachment('images/phpmailer_mini.png');

		//send the message, check for errors
		if (!$mail->send()) {
		    echo "Mailer Error: " . $mail->ErrorInfo;
		} else {
		    echo "Message sent!";
		}

		$accept_order = $c_admin->xacnhan_Order($mahd);
?>

