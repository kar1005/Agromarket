<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

error_reporting(0);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ecommerce Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">

</head>
<body>

    <div id="top"> <!-- top start -->

        <div class="container"> <!-- container start -->

            <div class="col-md-6 offer"> <!-- col-md-6 offer start -->

                <a href="#" class="btn btn-success btn-sm">
                    <?php
                        if (!isset($_SESSION['customer_email'])) {
                            echo "welcome : Guest";
                        } else {
                            echo "Welcome : ". $_SESSION['customer_email'] . "";
                        }
                    ?>
                </a>

                <a href="#">
                    Total : <?php total_price(); ?> , Total Cart Items : <?php items(); ?>
                </a>

            </div> <!-- col-md-6 offer end -->

            <div class="col-md-6"> <!-- col-md-6 start -->

                <ul class="menu"> <!-- menu start -->

                    <li>
                        <?php
                            if (!isset($_SESSION['customer_email'])) {
                                echo "<a href='customer_register.php'> Register </a>";
                            } else {
                                echo "<a href='shop.php'> Shop </a>";
                            }
                        ?>
                    </li>

                    <li>
                        <?php
                            if (!isset($_SESSION['customer_email'])) {
                                echo "<a href='checkout.php'> My Account </a>";
                            } else {
                                echo "<a href='customer/my_account.php?my_orders'> My Account </a>";
                            }
                        ?>
                    </li>
                    <li><a href="cart.php">Cart</a></li>
                    <li>
                        <?php
                            if (!isset($_SESSION['customer_email'])) {
                                echo "<a href='checkout.php'> Login </a>";
                            } else {
                                echo "<a href='logout.php'> Logout </a>";
                            }
                        ?>
                    </li>
                
                </ul> <!-- menu end -->

            </div> <!-- col-md-6 end -->

        </div> <!-- container end -->

    </div> <!-- top end -->

    <div class="navbar navbar-default" id="navbar"> <!-- navbar navbar-default start -->

        <div class="container"> <!-- container start -->

            <div class="navbar-header"> <!-- navbar-header start -->

                <a href="index.php" class="navbar-brand home"> <!-- navbar-brand home start -->

                <img src="images/logo.png" alt="Ecommerce Logo" class="hidden-xs">
                <img src="images/logo-small.png" alt="Ecommerce Logo" class="visible-xs"> 

                </a> <!-- navbar-brand home close -->

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                    <span class="sr-only">Toggle Navigation</span>

                    <i class="fa fa-align-justify"> </i>

                </button>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">

                    <span class="sr-only"> Toggle Search </span>

                    <i class="fa fa-search"></i> 

                </button>

            </div> <!-- navbar-header close -->

            <div class="navbar-collapse collapse" id="navigation"> <!-- navbar-collapse collapse start -->

                <div class="padding-nav"> <!-- padding-nav-start -->

                    <ul class="nav navbar-nav navbar-left"> <!-- nav navbar-nav navbar-left start -->

                        <li>
                            <a href="index.php">Home</a>
                        </li>

                        <li>
                            <a href="shop.php">Shop</a>
                        </li>

                        <li>
                            <?php
                                if (!isset($_SESSION['customer_email'])) {
                                    echo "<a href='checkout.php'> My Account </a>";
                                } else {
                                    echo "<a href='customer/my_account.php?my_orders'> My Account </a>";
                                }
                            ?>
                        </li>

                        <li>
                            <a href="cart.php">Cart</a>
                        </li>

                        <li class="active">
                            <a href="about_us.php">About Us</a>
                        </li>

                        <li>
                            <a href="blog.php">Blog</a>
                        </li>

                        <li>
                            <a href="contact.php">Contact Us</a>
                        </li>

                    </ul> <!-- nav navbar-nav navbar-left close -->

                </div> <!-- padding-nav-close -->

                <a href="cart.php" class="btn btn-primary navbar-btn right"> <!-- btn btn-primary navbar-btn right start -->

                    <i class="fa fa-shopping-cart"></i>

                    <span><?php items(); ?> item in cart</span>

                </a> <!-- btn btn-primary navbar-btn right close -->

                <div class="navbar-collapse collapse right"> <!-- navbar-collapse collapse right start -->

                    <button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" data-target="#search">

                        <span class="sr-only"> Toggle Search</span>
                        <i class="fa fa-search"></i>

                    </button>

                </div> <!-- navbar-collapse collapse right close -->

                <div class="collapse clearfix" id="search"> <!-- collapse clearfix start -->

                    <form action="results.php" class="navbar-form" method="get"> <!-- navbar-form start -->

                        <div class="input-group"> <!-- input-group start -->

                            <input type="text" class="form-control" placeholder="search here" name="user_query" required>

                            <span class="input-group-btn"> <!-- input-group-btn start -->

                                <button type="submit" value="Search" name="search" class="btn btn-primary">

                                    <i class="fa fa-search"></i>

                                </button> <!-- input-group-btn close -->

                            </span>

                        </div> <!-- input-group close -->

                    </form> <!-- navbar-form close -->

                </div> <!-- collapse clearfix close -->

            </div> <!-- navbar-collapse collapse close -->
            
        </div> <!-- container close -->

    </div> <!-- navbar navbar-default close --> 

    <div id="content"> <!-- content start -->

        <div class="container"> <!-- container start -->

            <div class="col-md-12"> <!-- col-md-12 start -->

                <ul class="breadcrumb"> <!-- breadcrumb start -->

                    <li>
                        <a href="index.php"> Home </a>
                    </li>

                    <li>About Us</li>

                </ul> <!-- breadcrumb close -->

            </div> <!-- col-md-12 close -->

            <div class="col-md-12"> <!-- col-md-12 start -->

                <div class="box"> <!-- box start -->

                    <?php
                        $get_about_us = "select * from about_us";

                        $run_about_us = mysqli_query($con, $get_about_us);

                        $row_about_us = mysqli_fetch_array($run_about_us);

                        $about_heading = $row_about_us['about_heading'];
                        $about_short_desc = $row_about_us['about_short_desc'];
                        $about_desc = $row_about_us['about_desc'];
                        $about_time = $row_about_us['about_time'];
                    ?>

                    <h1><?php echo $about_heading; ?></h1>

                    <p class="lead"><?php echo $about_short_desc; ?></p>

                    <p><?php echo $about_desc; ?></p>

                    <p style="text-align: center; color:red;"><?php echo $about_time; ?></p>

                </div> <!-- box close -->

            </div> <!-- col-md-9 close -->

        </div> <!-- container close -->

    </div> <!-- content close -->

    <?php
        include("includes/footer.php");
    ?>



<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"> </script>
</body>
</html>