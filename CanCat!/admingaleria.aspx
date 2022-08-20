<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingaleria.aspx.cs" Inherits="CanCat_.admingaleria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/style.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Administrar productos</title>
</head>
<body>
    <form id="form1" enctype="multipart/form-data" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="admin">Admin</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                    <a class="nav-link active"  href="admin.aspx">Inicio</a>
                    <a class="nav-link" aria-current="page" href="adminproductos.aspx">Productos</a>
                    <a class="nav-link" href="ventas.aspx">Ventas</a>
                    <a class="nav-link" href="carrito.aspx">Carrito</a>
                    <a class="nav-link" href="logout.aspx">Cerrar Sesión</a>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-sm-6  m-auto">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title ">Administrar Galeria</h5>
                            <div class="myform-top">
                                <asp:Image ID="ImagePreview" Width="90%" CssClass="py-3" runat="server" />
                            </div>
                            <div class="myform-bottom">
                               
                                <div class="pt-2">
                                    <asp:Button ID="btnSeleccionar" runat="server" Text="Añadir imagen" CssClass="btn btn-primary" Width="30%" OnClick="enviar_crear" ></asp:Button>
                                    <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" Width="30%" Text="Eliminar imagen" OnClick="enviar_eliminar" />
                                </div>

                                
                            </div>
                        </div>

                    </div>
                    
                </div>
                

            </div>

           

        </div>
    </form>
</body>
</html>
