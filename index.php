<?php
session_start();
$_SESSION['cart'] = Array();
?>
<!DOCTYPE html>
<head>
    <title>Online Eshop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="index.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */ 
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */ 
        .jumbotron {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        <div class="container text-center">
            <h1>Fake Amazon Store</h1>      
            <p>Our mission: Highest prices, Worst selection, Least convenience
</p>
        </div>
    </div>

    <nav class="navbar navbar-inverse" >
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                </button>
                <a class="navbar-brand" href="#"><img src="https://blog.ubi.com/app/uploads/sites/4/2015/06/ubisoft_logo_512x512-55727408v1_site_icon-256x256.png?x32888" width="25" height="25"></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
				<li><a href="#" id="home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-th-list"> Categories
						<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Shooter</a></li>
                            <li><a href="#">Strategy</a></li>
							<li><a href="#">Adventure</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <button class="btn btn-danger navbar-btn" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-phone-alt"> Contact</button>
                    <li><a href="#" id="myBtn"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Our contact</h4>
                </div>
                <div class="modal-body">
                    <p>Creator: Kevin and Sam</p>
                    <p>Email: Joe@hkgolden.com</p>
                    <p>Telephone number: 12345678</p>
                    <p align="center">Feel free to find us!</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myCart" role="dialog">
</div>

<div class="content container">
</div><br>

</body>
</html>
