<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_galeria_borrar.aspx.cs" Inherits="CanCat_.admin_galeria_borrar" %>

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
                    <div>
                            <asp:Button ID="volver_boton" runat="server" Text="volver" Height="100px" Width="160px" ForeColor="#0099ff" OnClick="regresar_admin"/>
                        </div>
                    <div class="card">
                        
                        <div class="card-body">
                            <h5 class="card-title ">Eliminar Imagenes</h5>
                            <div class="myform-top">
                                <asp:Image ID="ImagePreview" Width="90%" CssClass="py-3" runat="server" />
                            </div>
                            <div class="myform-bottom">
                                <div class="mb-3">
                                    <asp:Label ID="LabelProduct" CssClass="form-label" runat="server" Text="Nombre imagen" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="ID_imagen" CssClass="form-control" placeholder="ID de la imagen" runat="server"></asp:TextBox>
                                </div>

                                <div class="pt-2">
                                    <asp:Button ID="boton_eliminar" runat="server" Text="Eliminar" CssClass="btn btn-primary" Width="30%" OnClick="eliminar_click"  ></asp:Button>
                                </div>

                                <div>
                                    <asp:Label ID="mensaje_alerta" runat="server" Text="" ForeColor="#ff0000"></asp:Label>
                                    <asp:Label ID="mensaje_alerta1" runat="server" Text="" ForeColor="#00ff00"></asp:Label>
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
                            <asp:TemplateField HeaderText="id_imagen">
                                <ItemTemplate>
                                   <%# Eval ("id_imagen") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="nombre_imagen">
                                <ItemTemplate>
                                   <%# Eval ("nombre_imagen") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="imagen_recurso">
                                <ItemTemplate>
                                   <%# Eval ("imagen_recurso") %>
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
