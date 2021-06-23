<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer - Home</title>
<link rel="stylesheet" type="text/css"href="customerbooking.css" />

<script type="text/javascript">

function validate() {
  var Name=document.getElementById('Name');
  var password=document.getElementById('Password');
  

  if (Name.value.trim()=="")
  {
    alert("Blank Name");
    return false;
  }
  else if (UserName.value.trim()=="")
  {
    alert("Blank UserName");
    return false;
  }
  
  else if (Password.value.trim()=="")
  {
    alert("Blank Password");
    return false;
  }
  else if (Password.value.trim().length<5)
  {
    alert("Password is too short");
    return false;
  }
  else{
    return true;
  }
      
}
</script>
</head>

<body>

<jsp:include page="Header.jsp" />
<br> <br> <br>

<div class="signup-card">
<div class="sign_head">
<h1>SHIP YOUR ORDER</h1>
<img src="lock.png" alt="lock" class="lock"/>
</div>

<div class="sign_body">
<form  onsubmit="return validate()"; 
action="#" method="post">
 <table width="450" border="0" align="center">
 
     
 <tr>
    <td><input id="name" placeholder="Name" type="text" name="name" class="sign_user" required ></td>
  </tr>
     <td>&nbsp;</td>
  <tr>
    <td><input id="email-id" placeholder="Email ID" type="email-id" name="email" class="sign_user" required ></td>
  </tr>

    <td>&nbsp;</td>
    
    <tr>
    <td>
    <select name="type" class="sign_type">
    <option value="" disabled selected hidden>Select Your Item</option>
    <option value="item1">television</option>
    <option value="item2">refrigerator</option>
        <option value="item3">Air conditioner</option>
        <option value="item4">computer</option>
            <option value="item5">mobilephone</option>
                <option value="item6">air cooler</option>
            
        
    </select>
    </td>
  </tr>
      <td>&nbsp;</td>
    
   
  <tr>
    <td><input id="item Quantity" placeholder="Item Quantity" type="text" name="item Quantity" class="sign_user" required></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><input id="sender address" placeholder="Sender Address" type="text" name="sender address" class="sign_user" required></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    
     <tr>
    <td><input id="receiver address" placeholder="Receiver Address" type="text" name="receiver address" class="sign_user" required></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
   <td><input type="submit" class="button" value="SUBMIT" style="background:#4DC889; border:none; border-radius: 10px; width:610px; height:36px; cursor:pointer; font-family:open Sans; font-weight:700px; font-size:15px; color:#FFFFFF; "></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

</form> 
</div>
</div>

<br> <br> <br>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>