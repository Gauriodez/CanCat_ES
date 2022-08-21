<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearusuarios.aspx.cs" Inherits="CanCat_.crearusuarios" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/styles.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Crear productos</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
        <a class="navbar-brand" href="admin">Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active"  href="admin">Inicio</a>
                <a class="nav-link" aria-current="page" href="administrarproductos">Productos</a>
                <a class="nav-link" href="ventas">Ventas</a>
                <a class="nav-link" href="carrito">Carrito</a>
                <a class="nav-link" href="logout">Cerrar Sesión</a>
            </div>
        </div>
        </div>
    </nav>
    <form id="form1" enctype="multipart/form-data" runat="server">

        <div class="centered my-5">
            <div class="row">
                <div class="col-sm-12 col-md-8 col-lg-8 m-auto">
                    <div class="card ">
                        <div class="card-body">
                            <h5 class="card-title">Iniciar sesión</h5>
                            <hr />
                            <div class="mb-3">
                                <asp:Label ID="LabelProduct" CssClass="form-label" runat="server" Text="Nombre Producto" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="Product" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="LabelPrice" CssClass="form-label" runat="server" Text="Precio del Producto" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="Price" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="LabelQty" CssClass="form-label" runat="server" Text="Cantidad Producto" Font-Bold="True"></asp:Label>
                                <asp:TextBox ID="Quantity" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <asp:Label ID="LabelImage" CssClass="form-label" runat="server" Text="Imagen Producto" Font-Bold="True"></asp:Label>
                                <asp:FileUpload ID="PhotoFile" CssClass="form-control" runat="server" />
                            </div>
                            
                            <asp:Button ID="Create" CssClass="btn btn-success" runat="server" Text="Crear" OnClick="Create_Click" />
                              
                         </div>     
                     </div>   
                </div>
            </div>

        </div>
    </form>
</body>
</html>
