<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsuarios.aspx.cs" Inherits="CanCat_.AdminUsuarios" %>

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
                            <h5 class="card-title ">Administrar usuarios</h5>
                            <div class="myform-top">
                                <asp:Image ID="ImagePreview" Width="90%" CssClass="py-3" runat="server" />
                            </div>
                            <div class="myform-bottom">
                                <div class="mb-3">
                                    <asp:TextBox ID="UserId" CssClass="form-control" placeholder="Id usuario" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelNombre" CssClass="form-label" runat="server" Text="Nombre" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Nombre" CssClass="form-control" placeholder="Coloque sus nombres" runat="server"></asp:TextBox>
                                </div>
                                 <div class="mb-3">
                                    <asp:Label ID="LabelApellido" CssClass="form-label" runat="server" Text="Apellido" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Apellido" CssClass="form-control" placeholder="Coloque sus apellidos" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelUsuario" CssClass="form-label" runat="server" Text="Usuario" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Usuario" CssClass="form-control" placeholder="Coloque nombre de usuario" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelCorreo" CssClass="form-label" runat="server" Text="Correo" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="Correo" CssClass="form-control" placeholder="Coloque su correo" runat="server"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="LabelImagen" CssClass="form-label" runat="server" Text="Imagen de usuario" Font-Bold="True"></asp:Label>
                                    <asp:FileUpload ID="PhotoFile" CssClass="form-control" runat="server" />
                                </div>
                                 <div class="mb-3">
                                    <asp:Label ID="LabelTipoUsuario" CssClass="form-label" runat="server" Text="Tipo de usuario" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="TipoUser" CssClass="form-control" type="number" min="0" max="3" placeholder="Coloque rol del usuario" runat="server"></asp:TextBox>
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
                    <asp:GridView ID="UsersList" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                   <%# Eval ("Id_Usuario") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <ItemTemplate>
                                   <%# Eval ("Nombre") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apellido">
                                <ItemTemplate>
                                   <%# Eval ("Apellido") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                                <asp:TemplateField HeaderText="Usuario">
                                <ItemTemplate>
                                   <%# Eval ("Nombre_Usuario") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contra">
                                <ItemTemplate>
                                   <%# Eval ("Password") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Correo">
                                <ItemTemplate>
                                   <%# Eval ("Correo") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Foto">
                                <ItemTemplate>
                                   <%# Eval ("Foto") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="TipoUser">
                                <ItemTemplate>
                                   <%# Eval ("Tipo_Usuario") %>
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

