<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearproductos.aspx.cs" Inherits="CanCat_.crearproductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/styles.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="SweetAlert/sweetalert2.all.min.js"></script>
<script src="SweetAlert/sweetalert2.js"></script>

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
                <a class="nav-link active"  href="admin.aspx">Inicio</a>
                <a class="nav-link" aria-current="page" href="administrarproductos.aspx">Productos</a>
                <a class="nav-link" href="ventas.aspx">Ventas</a>
                <a class="nav-link" href="carrito.aspx">Carrito</a>
                <a class="nav-link" href="logout.aspx">Cerrar Sesión</a>
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
                            <h5 class="card-title">Crear Producto</h5>
                            <hr />
                                <div class="mb-3">
                                    <asp:Label ID="LabelProduct" CssClass="form-label" runat="server" Text="Nombre Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Product" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="mb-3">
                                    <asp:Label ID="LabelMarca" CssClass="form-label" runat="server" Text="Nombre Marca" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Marca" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelPrecio" CssClass="form-label" runat="server" Text="Precio Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Precio" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelCtd" CssClass="form-label" runat="server" Text="Inventario del Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Inventario" min="1" TextMode="number" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            <div class="mb-3">
                                    <asp:Label ID="LabelTipoProduct" CssClass="form-label" runat="server" Text="Tipo de Productos" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="TipoProduct" min="0" max="2" type="number" CssClass="form-control" placeholder="Tipo de producto" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelImagen" CssClass="form-label" runat="server" Text="Imagen Producto" Font-Bold="True"></asp:Label>
                                    <asp:FileUpload ID="PhotoFile" CssClass="form-control" runat="server" />
                                </div>
                            
                            <asp:Button ID="Create" CssClass="btn btn-success" runat="server" Text="Crear" OnClick="Create_Click" />

                            <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                              
                         </div>     
                     </div>   
                </div>
            </div>

        </div>
    </form>
</body>
</html>
