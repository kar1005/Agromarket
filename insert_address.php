<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

$select_general_settings = "select * from general_settings";

$run_general_settings = mysqli_query($con,$select_general_settings);

$row_general_settings = mysqli_fetch_array($run_general_settings);

$site_title = $row_general_settings["site_title"];

$meta_author = $row_general_settings["meta_author"];

$meta_description = $row_general_settings["meta_description"];

$meta_keywords = $row_general_settings["meta_keywords"];

?>
<!DOCTYPE html>
<html>

<head>

<title> <?php echo $site_title; ?> </title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="<?php echo $meta_description; ?>">

<meta name="keywords" content="<?php echo $meta_keywords; ?>">

<meta name="author" content="<?php echo $meta_author; ?>">

<link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet" >

<link href="styles/bootstrap.min.css" rel="stylesheet">

<link href="styles/style.css" rel="stylesheet">

<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<div id="top"><!-- top Starts -->

<div class="container"><!-- container Starts -->

<div class="col-md-6 offer"><!-- col-md-6 offer Starts -->

<a href="#" class="btn btn-success btn-sm" >
<?php

if(!isset($_SESSION['customer_email'])){

echo "Welcome :Guest";


}else{

echo "Welcome : " . $_SESSION['customer_email'] . "";

}


?>
</a>

<a href="#">
Shopping Cart Total Price: <?php total_price(); ?>, Total Items <?php items(); ?>
</a>

</div><!-- col-md-6 offer Ends -->

<div class="col-md-6"><!-- col-md-6 Starts -->

<ul class="menu"><!-- menu Starts -->

<?php if(!isset($_SESSION['customer_email'])){ ?>

<li>

<a href="customer_register.php"> Register </a>

</li>

<?php 

}else{

$customer_email = $_SESSION['customer_email'];

$select_customer = "select * from customers where customer_email='$customer_email'";

$run_customer = mysqli_query($con,$select_customer);

$customer_id = $row_customer['customer_id'];

$row_customer = mysqli_fetch_array($run_customer);

$customer_role = $row_customer['customer_role'];

if($customer_role == "customer"){ 

?>

<li>

<a href="shop.php"> Shop </a>

</li>

<?php }elseif($customer_role == "vendor"){ ?>

<li>

<a href="vendor_dashboard/index.php"> Vendor Dashboard </a>

</li>

<?php } } ?>

<li>

<?php

if(!isset($_SESSION['customer_email'])){

echo "<a href='checkout.php'> My Account </a>";

}else{

echo "<a href='customer/my_account.php?my_orders'> My Account </a>";

}

?>

</li>

<li>

<a href="cart.php"> Go to Cart </a>

</li>

<li>
<?php

if(!isset($_SESSION['customer_email'])){

echo "<a href='checkout.php'> Login </a>";

}else {

echo "<a href='logout.php'> Logout </a>";

}

?>
</li>

</ul><!-- menu Ends -->

</div><!-- col-md-6 Ends -->

</div><!-- container Ends -->
</div><!-- top Ends -->

<div class="navbar navbar-default" id="navbar"><!-- navbar navbar-default Starts -->
<div class="container" ><!-- container Starts -->

<div class="navbar-header"><!-- navbar-header Starts -->

<a class="navbar-brand home" href="index.php" ><!--- navbar navbar-brand home Starts -->

<img src="images/logo.png" class="hidden-xs" >
<img src="images/logo-small.png" class="visible-xs" >

</a><!--- navbar navbar-brand home Ends -->

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation"  >

<span class="sr-only" >Toggle Navigation </span>

<i class="fa fa-align-justify"></i>

</button>

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search" >

<span class="sr-only" >Toggle Search</span>

<i class="fa fa-search" ></i>

</button>


</div><!-- navbar-header Ends -->

<div class="navbar-collapse collapse" id="navigation" ><!-- navbar-collapse collapse Starts -->

<div class="padding-nav" ><!-- padding-nav Starts -->

<ul class="nav navbar-nav navbar-left"><!-- nav navbar-nav navbar-left Starts -->

<li class="active">
<a href="index.php"> Home </a>
</li>

<li>
<a href="shop.php"> Shop </a>
</li>

<li>
<?php

if(!isset($_SESSION['customer_email'])){

echo "<a href='checkout.php' >My Account</a>";

}
else{

echo "<a href='customer/my_account.php?my_orders'>My Account</a>";

}


?>
</li>

<li>
<a href="cart.php"> Shopping Cart </a>
</li>

<li>
<a href="about.php"> About Us </a>
</li>

<li>

<a href="services.php"> Services </a>

</li>

<li>
<a href="contact.php"> Contact Us </a>
</li>

</ul><!-- nav navbar-nav navbar-left Ends -->

</div><!-- padding-nav Ends -->

<a class="btn btn-primary navbar-btn right" href="cart.php"><!-- btn btn-primary navbar-btn right Starts -->

<i class="fa fa-shopping-cart"></i>

<span> <?php items(); ?> items in cart </span>

</a><!-- btn btn-primary navbar-btn right Ends -->

<div class="navbar-collapse collapse right"><!-- navbar-collapse collapse right Starts -->

<button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" data-target="#search">

<span class="sr-only">Toggle Search</span>

<i class="fa fa-search"></i>

</button>

</div><!-- navbar-collapse collapse right Ends -->

<div class="collapse clearfix" id="search"><!-- collapse clearfix Starts -->

<form class="navbar-form" method="get" action="results.php"><!-- navbar-form Starts -->

<div class="input-group"><!-- input-group Starts -->

<input class="form-control" type="text" placeholder="Search" name="user_query" required>

<span class="input-group-btn"><!-- input-group-btn Starts -->

<button type="submit" value="Search" name="search" class="btn btn-primary">

<i class="fa fa-search"></i>

</button>

</span><!-- input-group-btn Ends -->

</div><!-- input-group Ends -->

</form><!-- navbar-form Ends -->

</div><!-- collapse clearfix Ends -->

</div><!-- navbar-collapse collapse Ends -->

</div><!-- container Ends -->
</div><!-- navbar navbar-default Ends -->

<div id="content" ><!-- content Starts -->

<div class="container-fluid"><!-- container-fluid Starts -->

<div class="col-md-12"><!--- col-md-12 Starts -->

<ul class="breadcrumb" ><!-- breadcrumb Starts -->

<li>
<a href="index.php">Home</a>
</li>

<li>Checkout</li>

</ul><!-- breadcrumb Ends -->

</div><!--- col-md-12 Ends -->

<div id="content"><!-- content Starts -->

<div class="container-fluid"><!-- container-fluid Starts -->

<div class="col-md-12" ><!--- col-md-12 Starts --> 

</div><!--- col-md-12 Ends -->

<form method="post" enctype="multipart/form-data" id="shipping-billing-details-form"><!-- shipping-billing-details-form Starts -->

<h2> Billing Details </h2>

<div class="row"><!-- row Starts -->

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> First name : </label>

<input type="text" name="billing_first_name" class="form-control" required >

</div><!-- form-group Ends -->

</div>

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> Last name : </label>

<input type="text" name="billing_last_name" class="form-control" required>

</div><!-- form-group Ends -->

</div>

</div><!-- row Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Country : </label>

<select name="billing_country" class="form-control" required>

<option> Select A Country </option>

<?php

$get_countries = "select * from countries";

$run_countries = mysqli_query($con,$get_countries);

while($row_countries = mysqli_fetch_array($run_countries)){

$country_id = $row_countries['country_id'];

$country_name = $row_countries['country_name'];

echo "<option value = '$country_id'> $country_name </option>";

?>

<?php } ?>

</select>

</div><!-- form-group Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Address 1 : </label>

<input type="text" name="billing_address_1" class="form-control" required>

</div><!-- form-group Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Address 2 : </label>

<input type="text" name="billing_address_2" class="form-control" required>

</div><!-- form-group Ends -->

<div class="row"><!-- row Starts -->

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> State / County : </label>

<input type="text" name="billing_state" class="form-control" required>

</div><!-- form-group Ends -->

</div>

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> Town / City : </label>

<input type="text" name="billing_city" class="form-control" required >

</div><!-- form-group Ends -->

</div>


</div><!-- row Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Postcode / ZIP : </label>

<input type="text" name="billing_postcode" class="form-control" required>

</div><!-- form-group Ends -->

<hr>

<div id="shipping-details-form-div"><!-- shipping-details-form-div Starts -->

<h2> Shipping Details </h2>

<div class="row"><!-- row Starts -->

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> First name : </label>

<input type="text" name="shipping_first_name" class="form-control" required>

</div><!-- form-group Ends -->

</div>

<div class="col-sm-6">

<div class="form-group" ><!-- form-group Starts -->

<label> Last name : </label>

<input type="text" name="shipping_last_name" class="form-control" required>

</div><!-- form-group Ends -->

</div>

</div><!-- row Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Country : </label>

<select name="shipping_country" class="form-control" required>

<option> Select A Country </option>

<?php

$get_countries = "select * from countries";

$run_countries = mysqli_query($con,$get_countries);

while($row_countries = mysqli_fetch_array($run_countries)) {

$country_id = $row_countries['country_id'];

$country_name = $row_countries['country_name'];

echo "<option value='$country_id'>$country_name</option>";

?>

<?php } ?>

</select>

</div><!-- form-group Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Address 1 : </label>

<input type="text" name="shipping_address_1" class="form-control" required >

</div><!-- form-group Ends -->

<div class="form-group" ><!-- form-group Starts -->

<label> Address 2 : </label>

<input type="text" name="shipping_address_2" class="form-control" required >

</div><!-- form-group Ends -->

<div class="row"><!-- row Starts -->

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> State / County : </label>

<input type="text" name="shipping_state" class="form-control" required >

</div><!-- form-group Ends -->

</div>

<div class="col-sm-6">

<div class="form-group"><!-- form-group Starts -->

<label> Town / City : </label>

<input type="text" name="shipping_city" class="form-control" required >

</div><!-- form-group Ends -->

</div>

</div><!-- row Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Postcode / ZIP : </label>

<input type="text" name="shipping_postcode" class="form-control" required >

</div><!-- form-group Ends -->

</div><!-- shipping-details-form-div Ends -->

<div class="form-group">

<input type="submit" name="submit" class="btn btn-primary" value= "Insert Address">

</div>

</form><!-- shipping-billing-details-form Ends -->

</div><!-- box Ends -->

</div><!-- col-md-8 Ends -->

<?php 

if(isset($_POST['submit'])){
    $billing_first_name = $_POST['billing_first_name'];
    $billing_last_name = $_POST['billing_last_name'];
    $billing_country = $_POST['billing_country'];
    $billing_address_1 = $_POST['billing_address_1'];
    $billing_address_2 = $_POST['billing_address_2'];
    $billing_state = $_POST['billing_state'];
    $billing_city = $_POST['billing_city'];
    $billing_postcode = $_POST['billing_postcode'];
    $shipping_first_name = $_POST['shipping_first_name'];
    $shipping_last_name = $_POST['shipping_last_name'];
    $shipping_country = $_POST['shipping_country'];
    $shipping_address_1 = $_POST['shipping_address_1'];
    $shipping_address_2 = $_POST['shipping_address_2'];
    $shipping_state = $_POST['shipping_state'];
    $shipping_city = $_POST['shipping_city'];
    $shipping_postcode = $_POST['shipping_postcode'];

    $insert_customer_address = "insert into customers_address(customer_id,billing_first_name,billing_last_name, billing_country, billing_address_1, billing_address_2,
    billing_state, billing_city, billing_postcode, shipping_first_name, shipping_last_name, shipping_country,
    shipping_address_1, shipping_address_2, shipping_state, shipping_city, shipping_postcode)
    values('$customer_id','$billing_first_name','$billing_last_name', '$billing_country','$billing_address_1','$billing_address_2',
    '$billing_state','$billing_city','$billing_postcode','$shipping_first_name', 
    '$shipping_last_name','$shipping_country','$shipping_address_1','$shipping_address_2','$shipping_state','$shipping_city', 
    '$shipping_postcode')";

    $run_customer = mysqli_query($con, $insert_customer_address);

    if($run_customer){
        echo "<script>alert('Address Inserted Successfully..!')</script>";
        echo "<script>window.open('shop.php','_self')</script>";
    }

}

?>
