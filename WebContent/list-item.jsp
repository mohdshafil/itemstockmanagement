<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>List Item</title>
  </head>
  <body>
  <div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h1 class="text-white h4">Welcome ${user.firstname }</h1>
      <span class="text-white h4">Welcome To Item Stock Management</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
    
    
            
<button type="button" class="btn btn-dark">Signup</button>   
<button type="button" class="btn btn-dark">Login</button>



    
    
    <div align="center"><h1>Welcome to Item Stock Management</h1>
    
    

<!DOCTYPE html>
<html>
<head>
<div class="p-3 mb-2 bg-warning text-dark">WELCOME TO ITEM STOCK MANAGEMENT</div>
</head>
<body>
<h1>Signup Form</h1>
<form action="UserController" method="post">
<% 
String msg=(String)request.getAttribute("msg");
if(msg != null) {
	%>
	
	<h3 style="color:red;"> <%=msg %> </h3> 
<% }
%>
<table>
<tr>
<td>User ID :</td>
<td> <input type="text"  name="userId" required="required"  placeholder="enter userID"> </td>
</tr>
<tr>
<td>Password :</td>
<td> <input type="password" name="password" required="required" placeholder="enter password"> </td>
</tr>

<tr>
<td>First Name :</td>
<td> <input type="text"  name="firstname" required="required" placeholder="enter FirstName"> </td>
</tr>

<tr>
<td>Last Name :</td>
<td> <input type="text"  name="lastname" required="required" placeholder="enter LastName" > </td>
</tr>

<tr>
<td>Address :</td>
<td> <textarea rows="4"  cols="21"  name="address" placeholder="enter Address"> </textarea> </td>
</tr>

<tr>
<td>City :</td>
<td> <select name="city">
    <option>Bareilly</option>
    <option>Chandigarh</option>
    <option>Delhi </option>
    <option>Ghaziabad </option>
    <option>Jaipur</option>
    <option>Noida</option>
    <option>Mumbai</option>
    </select>
    </td>
</tr>

<tr> 

<td colspan="8" align="center"><input type="submit" value="Signup"   class="btn btn-dark"></td>    

</tr>
</table>
</form>
</div>
</body>
</html>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>