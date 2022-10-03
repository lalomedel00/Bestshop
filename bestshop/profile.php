<?php

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BestShop</title>
		<link rel="shortcut icon" href="./product_images/logito.png">
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<style>
			@media screen and (max-width:480px){
				#search{width:80%;}
				#search_btn{width:30%;float:right;margin-top:-32px;margin-right:10px;}
			}
		</style>
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only"> alternar navegación</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php"><img src="product_images/logo.png" width="80px" height="80px"></a></li>

				<li style="width:300px;left:10px;top:10px;"><input type="text" class="form-control" id="search"></li>
				<li style="top:10px;left:20px;"><button class="btn btn-primary" id="search_btn">Buscar</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" id="cart_container" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Carrito<span class="badge">0</span></a>
					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3 col-xs-3">Sl.No</div>
									<div class="col-md-3 col-xs-3">Imagen del producto</div>
									<div class="col-md-3 col-xs-3">nombre del producto</div>
									<div class="col-md-3 col-xs-3">Precio en $.</div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span><?php echo "Hola ".$_SESSION["name"]; ?></a>
					<ul class="dropdown-menu">
						<li><a href="cart.php" style="text-decoration:none; color:blue;"><span class="glyphicon glyphicon-shopping-cart">Carrito</a></li>
						<li class="divider"></li>
						<li><a href="" style="text-decoration:none; color:blue;">Cambia la contraseña</a></li>
						<li class="divider"></li>
						<li><a href="logout.php" style="text-decoration:none; color:blue;">Cerrar sesión</a></li>
					</ul>
				</li>
				
			</ul>
		</div>
	</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
    <p><br/></p>
    <p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2 col-xs-12">	
			</div>
			<div class="col-md-8 col-xs-12">
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading"><h2>Seleccione algun Supermercado </h2></div>
					<STYLE type="text/css">
  					H2 { text-align: center}
 					</STYLE>


					<div class="panel-body">
						<div>
							<a href="market.php"><img src="product_images/soriana.png" style="float: left" width="350px" height="150px"></a>
							<a href="market.php"><img src="product_images/alsuper.png" style="float: right" width="400px" height="300px"></a>
							<a href="market.php"><img src="product_images/bodega.png" style="float: left" width="400px" height="250px"></a>
							<a href="market.php"><img src="product_images/esmeralda.png" style="float: right" width="300px" height="150px"></a>
						</div>


					</div>

				</div>
			</div>
            
		</div>
	</div>
</body>
</html>

















































