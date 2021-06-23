<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
footer{
	position: fixed;
	bottom: 0;
	background-color: black;
}

@media (max-height:800px){
	footer { position: static; }
	header { padding-top:40px; }
}


.footer-distributed{
	background-color: black;
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 50px 50px 60px 50px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 30%;
}

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

/* The company logo */

.footer-distributed .footer-left img{
	width: 30%;
}

.footer-distributed h3 span{
	color:  #e0ac1c;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}


.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #e0ac1c;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 30%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* Here is the code for Responsive Footer */
/* You can remove below code if you don't want Footer to be responsive */


@media (max-width: 880px) {

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
</style>
</head>
<body>
<footer class="footer-distributed">
  <div class="footer-left">
        <img src=" icon.jpg" width="50" height="50">
		<h3>About<span> Project</span></h3>

		<p class="footer-links">
			<a href="index.html">Home</a>
			|
			<a href="#">Service</a>
			|
			<a href="au.html">About</a>
			|
			<a href="contactus.html">Contact</a>
		</p>

		<p class="footer-company-name">© 2021 Courier services Pvt. Ltd.</p>
	</div>

	<div class="footer-center">
		<div>
			<i class="fa fa-map-marker"></i>
			  <p><span>	K L Deemed to be University,
                         Green Fields,
                         Guntur. 
                         </span>
				   vijaywada, Andhra Pradesh- 522502</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p>+91 22-27782183</p>
		</div>
		<div>
			<i class="fa fa-envelope"></i>
			<p><a href="mailto:support@deliveryservices.com">support@deliveryservices.com</a></p>
		</div>
	</div>
	<div class="footer-right">
		<p class="footer-company-about">
			<span>Connect with Us</span>
			We offer training and skill building courses across Technology, Design, Management, Science and Humanities.</p>
		<div class="footer-icons">
			<a href="https://www.facebook.com/"><i class="fa fa-facebook"><img src="facebook.png" width="40" height="40"></i></a> &nbsp;
			<a href="https://twitter.com/login?lang=en"><i class="fa fa-twitter"></i><img src="twitter.png" width="40" height="40"></a> &nbsp;
			<a href="https://www.instagram.com/accounts/login/"><i class="fa fa-instagram"><img src="Instagram.png" width="40" height="40"></i></a> &nbsp;
			<a href="https://www.linkedin.com/login"><i class="fa fa-linkedin"><img src="linkdin.png" width="40" height="40"></i></a> &nbsp;
			<a href="https://www.youtube.com"><i class="fa fa-youtube"><img src="youtube.png" width="40" height="40"></i></a> &nbsp;
		</div>
	</div>
</footer>
</body>
</html>