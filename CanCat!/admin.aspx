<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="CanCat_.admin" %>

<!DOCTYPE html>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" href="../img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin panel</title>
</head>
    <body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg ftco-navbar-light" id="ftco-navba">
               <div class="container">
            <a class="navbar-brand"><span class="flaticon-pawprint-1 mr-2"></span>CanCat!</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link">Admin</a></li>
                    <li class="nav-item"><a href="Ventas.aspx" class="nav-link">Ventas</a></li>
                    <li class="nav-item"><a href="adminproductos.aspx" class="nav-link">Productos</a></li>
                    <li class="nav-item"><a href="carrito.aspx" class="nav-link">Carrito</a></li>
                    <li class="nav-item"><a href="logout.aspx" class="nav-link">Cerrar Sesión</a></li>
                </ul>
            </div>
               </div>
         </nav>
         <div class="container my-4">
            <div class="row">
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Productos</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Crear productos</h6>
                        <a class="btn btn-primary" href="crearproductos.aspx">Ir</a>
                      </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Productos</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Administrar productos</h6>
                        <a class="btn btn-primary" href="adminproductos.aspx">Ir</a>
                      </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Carrito</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Ver carrito</h6>
                        <a class="btn btn-primary" href="carrito.aspx">Ir</a>
                      </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Ventas</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Ver Ventas</h6>
                        <a class="btn btn-primary" href="ventas.aspx">Ver</a>
                      </div>
                    </div>
                </div>
                 <div class="col-sm-12 col-md-3 col-lg-3">
                    <div class="card">
                      <div class="card-body">
                        <h5 class="card-title">Usuarios</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Administrar Usuarios</h6>
                        <a class="btn btn-primary" href="AdminUsuarios.aspx">Ir</a>
                      </div>
                    </div>
                </div>
        </div>
        </div>
        
    </form>
         <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

