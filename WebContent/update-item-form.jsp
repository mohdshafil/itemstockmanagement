<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update Items</title>
</head>
<body>


<!DOCTYPE html">
<html>
<head>
<title>Update  Items</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
    <div class="container">
      <a href="ItemController" class="navbar-brand">Msa Pharma</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item px-2">
            <a href="ItemController" class="nav-link active">Home</a>
          </li>
             
        </ul>

        <ul class="navbar-nav ml-auto">
        
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fa fa-user-times"></i> 
            </a>
          </li>
          
          <li class="nav-item mr-3">
            <a href="#" class="nav-link">
              <i class="fa fa-user"></i>Welcome ${user.firstname }
            </a>
           
          </li>
          <li class="nav-item">
            <a href="UserController?command=LOGOUT" class="nav-link">
              <i class="fa fa-user-times"></i> Logout
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>
<div class="container">
<header id="main-header" class="py-2 bg-warning text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
         <img src="images/pharmacy.jpg" width="200"  height="100" class="rounded float-left" alt="shafil"> <h1>Item Stock Management</h1>
        </div>
      </div>
    </div>
  </header>
  </div>





<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Update Items</title>
  </head>
  <body style="background-clor:grey" >
  <div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">Msa PHARMA</h5>
      <span class="text-muted"> Distributes Their Pharmaceutical And Healthcare Products, Supplies And Prescription Drugs To a Lot Of Distribution Centers. </span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
    <div align="center">
    
    <h1 style="color:orange" > Update RECORD </h1>
    <h1>ITEM STOCK MANAGEMENT</h1>
    
<form action="ItemController" method="post">
<input type="hidden" name="command" value="UPDATE">
<input type="hidden" name="itemCode" value="${ITEM.itemCode }"/>
<h3 style="color : red;"> </h3>
<table>
<tr>
<td> Item Name : </td>
<td> <input type="text" name="itemName" value="${ITEM.itemName }"   required="required" placeholder="Enter Item Name" > </td>
</tr>


<tr>
<td> Unit :</td>
<td><input type="text" name="unit"  value="${ITEM.unit }"     required = "required" placeholder="Enter Unit"></td>
</tr>

<td> Beginning Inventory :</td>
<td><input type="text" name="beginningInventory" value="${ITEM.beginningInventory }"     required = "required" placeholder="Enter inventorynumber"></td>
</tr>



<tr>
<td> Quantity On Hand : </td>
<td> <input type="number" name="quantityOnHand"    value="${ITEM.quantityOnHand }"     required = "required" placeholder="Quantity On Hand" > </td>
</tr>
<tr>
<td> Price Per Unit : </td>
<td> <input type="number" name="pricePerUnit"    value="${ITEM.pricePerUnit }"    required="required"  placeholder="Price Per Unit" min="0"> </td>
</tr>
<tr>

<td> Date Of Manufacture : </td>
<td> <input type="date" name="dateOfManufacture" value="${ITEM.dateOfManufacture }"      required="required" placeholder="Date Of Manufacture" > </td>
</tr>


<td> Date Of Expiry : </td>
<td> <input type="date" name="dateOfExpiry"   value="${ITEM.dateOfExpiry }"      required="required" placeholder="Date Of Expiry" > </td>
</tr>

<tr>
<td> Location :</td><td>
 <select name="location">
 <option selected>${ITEM.location}</option>
<option>Bulk Zone</option>
<option>Pick Zone</option>
<option>Distribution Centre</option>
</select> 
</td>
</tr>


<td> CATEGORY :</td>
<td> 

 <select name="itemCategory">
<option selected>${ITEM.itemCategory}</option>
<option>Pharma Drug</option>
<option>Health and Personal Care</option>
<option>Baby Care</option>
<option>Medical Supplies and Equipments</option>
</select> 
</td>




<tr>
<td><label></label></td>
<td><input type="submit"  class="btn btn-dark" value="Update"></td>


</tr>
</table>
</form>


<form action="ItemController">
<button type="submit"  class="btn btn-dark" >Back To List </button>

</form>
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 </div>
  </body>
</html>



</body>
</html>