<?php
session_start();
include "dbconnect.php";
$sum=0;
echo ' <div class="modal-dialog modal-lg ">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Shopping cart checkout</h4>
                </div>
                <div class="modal-body">';
foreach ($_SESSION['cart'] as $x => $x_value) {
    $sql = "SELECT * FROM games where id='" . $x_value . "'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    echo 'Item name: ' . $row["Name"];
	echo '<span style="float:right;">HKD $' . $row["Price"].'</span><br>';
	$sum+=$row["Price"];
}
if($sum>0){
echo '<hr>Sub-Total: ';
echo '<span style="float:right;">HKD $<span class="total">' . $sum.'</span></span><br>';
echo 'New store discount(75%): ';
echo '<span style="float:right;">HKD $<span class="total">' . 0.75*$sum.'</span></span><br><br><br><br>';
echo '<form>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" class="form-control" id="address" placeholder="Enter address">
    </div>
	<div class="form-group">
      <label for="phonenumber">Phone Number:</label>
      <input type="tel" class="form-control" id="phonenumber" placeholder="Enter phone number">
    </div>
	<div class="modal-footer">
    <button type="submit" class="btn btn-warning" data-dismiss="modal" id="bill">Bill</button>
	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	 </dir>
	</form>';
}
echo '</div>
            </div>
        </div>
    </div>';
