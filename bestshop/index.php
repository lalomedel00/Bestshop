<?php
session_start();
if(isset($_SESSION["uid"])){
	header("location:profile.php");
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
					<span class="sr-only">alternar navegación</span>
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
				
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Inicio de Sesion</a>
					<ul class="dropdown-menu">
						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Iniciar sesión</div>
								<div class="panel-heading">
									<label for="email">Email</label>
									<input type="email" class="form-control" id="email" required/>
									<label for="email">Contraseña</label>
									<input type="password" class="form-control" id="password" required/>
									<p><br/></p>
									<a href="#" style="color:white; list-style:none;"> Contraseña Olvidada</a><input type="submit" class="btn btn-success" style="float:right;" id="login" value="Iniciar Sesion">
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
				<li><a href="customer_registration.php"><span class="glyphicon glyphicon-user"></span>Regístrate</a></li>
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
