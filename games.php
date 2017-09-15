<?php
session_start();
$categories = $_REQUEST['categories'];
include "dbconnect.php";
$sql = "SELECT * FROM games where categories='" . $categories . "'";
$result = $conn->query($sql);
if ($result->num_rows > 0)
    echo '<div class="container" >    
		<div class="row">';
while ($row = $result->fetch_assoc()){
    echo '<div class="col-sm-4">
    <div class="panel panel-primary">
		<div class="panel-heading">' . $row["Name"] . '</div>
			<div class="panel-body"><img src="' . $row["PictureLink"] . '" class="img-responsive" style="width:100%" alt="Image"></div>
				<div class="panel-footer clearfix">HKD: $' . $row["Price"] . '';
			if (!in_array($row["ID"], $_SESSION['cart']))
				echo'<button type="button" class="btn btn-primary pull-right" id="buy" value=' . $row["ID"] . '>Buy</button>';
			else
				echo'<button disabled="true" type="button" class="btn btn-primary pull-right" id="buy" value=' . $row["ID"] . '>Buy</button>';
		echo'</div></div></div>';
}
echo '</div></div><br>';
?>
	
