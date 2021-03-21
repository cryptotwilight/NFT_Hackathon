<?php
include_once 'db.php';
if(isset($_POST['submit']))
{    
     $rental_name = $_POST['rental_name'];
     $property_address  = $_POST['property_address'];
     $deposit_amount  = $_POST['deposit_amount '];
     $tenant_reference = $_POST['tenant_reference'];
     $notice_period = $_POST['notice_period'];
     $lease_start_date  = $_POST['lease_start_date '];
     $lease_end_date  = $_POST['lease_end_date '];
     $renew_lease  = $_POST['renew_lease '];
     $pay_by_date  = $_POST['pay_by_date '];
     $sql = "INSERT INTO lease_agreements (rental_name,property_address,deposit_amount,tenant_reference,notice_period,lease_start_date,lease_end_date,renew_lease,pay_by_date)
     VALUES ('$rental_name','$property_address', '$deposit_amount','$tenant_reference','$notice_period','$lease_start_date','$lease_end_date','$renew_lease','$pay_by_date')";
     if (mysqli_query($conn, $sql)) {
        echo "New rental is pending creation!";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     mysqli_close($conn);
}
?>