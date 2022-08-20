<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminproductos.aspx.cs" Inherits="CanCat_.adminproductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/styles.css"/>
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
                            <h5 class="card-title ">Administrar productos</h5>
                            <div class="myform-top">
                                <asp:Image ID="ImagePreview" Width="90%" CssClass="py-3" runat="server" />
                            </div>
                            <div class="myform-bottom">
                                <div class="mb-3">
                                    <asp:TextBox ID="ProductId" CssClass="form-control" placeholder="Id producto" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelProduct" CssClass="form-label" runat="server" Text="Nombre Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Product" CssClass="form-control" placeholder="Nombre del producto" runat="server"></asp:TextBox>
                                </div>
                                 <div class="mb-3">
                                    <asp:Label ID="LabelMarca" CssClass="form-label" runat="server" Text="Nombre Marca" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Marca" CssClass="form-control" placeholder="Nombre de la marca" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelPrecio" CssClass="form-label" runat="server" Text="Precio Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Precio" CssClass="form-control" placeholder="Precio del producto" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelInventario" CssClass="form-label" runat="server" Text="Inventario Producto" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Inventario" CssClass="form-control" type="number" min="1" placeholder="Inventario del producto" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelTipoProduct" CssClass="form-label" runat="server" Text="Tipos de Productos" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="TipoProducto" CssClass="form-control" type="number" min="0" max="2" placeholder="Tipo de producto" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelImagen" CssClass="form-label" runat="server" Text="Imagen Producto" Font-Bold="True"></asp:Label>
                                    <asp:FileUpload ID="PhotoFile" CssClass="form-control" runat="server" />
                                </div>
                                <div class="pt-2">
                                    <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="btn btn-primary" Width="30%" OnClick="btnSeleccionar_Click" ></asp:Button>
                                    <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-success" Width="30%" OnClick="btnEditar_Click"></asp:Button>
                                    <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" Width="30%" Text="Eliminar" OnClick="btnEliminar_Click" />
                                </div>
                                
                            </div>
                        </div>

                    </div>
                    
                </div>
                

            </div>

            <div class="my-4">
                <div class="center">
                    <asp:GridView ID="ProductsList" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                   <%# Eval ("Id") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <ItemTemplate>
                                   <%# Eval ("Product") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Precio">
                                <ItemTemplate>
                                   <%# Eval ("Precio") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Cantidad">
                                <ItemTemplate>
                                   <%# Eval ("Inventario") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="TipoProducto">
                                <ItemTemplate>
                                   <%# Eval ("Tipo_Producto") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Imagen">
                                <ItemTemplate>
                                   <%# Eval ("Imagen") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
