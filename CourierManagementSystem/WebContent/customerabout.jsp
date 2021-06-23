<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer - About Us</title>
<style>

body{
	margin:0;
	padding: 0;
	font-weight: Century Gothic;
	background: url(box4.jpg)no-repeat;
	background-size: cover;
	background-position: center;
}

.container{
	height: 75vh;
	width: 30%;
	background: rgba(238, 232, 232, 0.6);
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: 500px;
	transform: translate(-50%,-50%);
    padding: 0 10px;
}

.img{
    height: 70px;
    width: 70px;
    background: url("box.jpg")no-repeat;
    background-size: cover;
    background-position: center ;
    border-radius: 50px;
    position: absolute;
	top: 0%;
	left: 50%;
    transform: translate(-50%,-50%);
}

.container h1{
    color:black;
    margin-top: 50px;
}

.container p{
    color: rgb(22, 21, 21);
    margin-top: 60px;
    font-size: large;
}

.btn{
    background: no-repeat;
    outline: none;
    border: 1px solid black;
    color: teal;
    width: 50%;
    padding: 7px 15px;
    font-size: large;
    cursor: pointer ;
    transition: 0.3s ease;
    margin-top: 50px;
}

.btn:hover{
    background: turquoise;
    color: black;
}

</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<div class="container">
    <center>
    <div class="img"> </div>
    <br> <br>
    <h1>About Us</h1>
    <p>
       The team drives market leadership through its motivated people force, dedicated air and ground capacity, 
       cutting-edge technology, wide range of innovative, vertical specific products and value-added services to deliver
       unmatched standards of service quality to its customers.Market leadership is further validated by numerous
       awards and recognitions from customers for exhibiting reliability, superior brand experience
    </p>
    <button class="btn">Read More</button>
    </center>    
</div>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>