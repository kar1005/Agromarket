<div class="box"> <!-- box start -->

<?php

$session_email = $_SESSION['customer_email'];

$select_customer = "select * from customers where customer_email='$session_email'";

$run_customer = mysqli_query($con, $select_customer);

$row_customer = mysqli_fetch_array($run_customer);

$customer_id = $row_customer['customer_id'];

?>

    <h1 class="text-center">Payment Option</h1>

    <p class="lead text-center">
        <a href="order.php?c_id=<?php echo $customer_id; ?>">Cash On Delivery (COD)</a>
    </p>

    <center> <!-- center start -->



    <form id="checkout-selection" action="pay.php" method="post">

<?php
    $i = 0;

    $ip_add = getRealUserIp();

    $get_cart = "select * from cart where ip_add = '$ip_add'";

    $run_cart = mysqli_query($con, $get_cart);

    while ($row_cart = mysqli_fetch_array($run_cart)) {
        $pro_id = $row_cart['p_id'];
        $pro_qty = $row_cart['qty'];
        $pro_price = $row_cart['p_price'];

        $get_products = "select * from products where product_id = '$pro_id'";

        $run_products = mysqli_query($con, $get_products);

        $row_products = mysqli_fetch_array($run_products);

        $product_title = $row_products['product_title'];

        $i++;
    
?>

<input type="hidden" name="product_title" value="<?php echo $product_title; ?>">
<input type="hidden" name="cmd" value="_cart">

<input type="hidden" name="p_price" value="<?php echo $pro_price; ?>">

<input type="hidden" name="currency" value="INR">

<input type="hidden" name="email" value="info@productduniya.com">	

<!-- <input type="hidden" name="return" value="http://localhost/ecom/paypal_order.php?c_id=<?php echo $customer_id; ?>">

<input type="hidden" name="cancel_return" value="http://localhost/ecom/index.php"> -->

<input type="submit" name="submit" value="Buy Now">

<?php } ?>





</form>




    </center> <!-- center close -->

</div> <!-- box close -->

