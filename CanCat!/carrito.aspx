<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="CanCat_.carrito" %>

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

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carrito</title>
    <style>
        #CheckOut{
            text-align:right;
        }
    </style>
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
                    <li class="nav-item"><a href="index.aspx" class="nav-link">Inicio</a></li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">informacion </a></li>
                    <li class="nav-item"><a href="vet.aspx" class="nav-link">Veterinaria</a></li>
                    <li class="nav-item"><a href="services.aspx" class="nav-link">Servicios</a></li>
                    <li class="nav-item"><a href="gallery.aspx" class="nav-link">Galeria</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contactos</a></li>
                    <li class="nav-item"><a href="Tienda.aspx" class="nav-link">Tienda</a></li>
                    <li class="nav-item"><a href="logout.aspx" class="nav-link">Cerrar Sesión</a></li>
                   
                </ul>
            </div>
               </div>
         </nav>
        <div class=" container my-5">
            <asp:GridView ID="ShoppingCart" AutoGenerateColumns="False" CssClass="table table-striped table-hover table-bordered" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="ID Producto">
                        <ItemTemplate>
                             <%# Eval ("ProductoId") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Imagen">
                        <ItemTemplate>
                             <%# Eval ("Imagen") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Producto">
                        <ItemTemplate>
                             <%# Eval ("Product") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio">
                        <ItemTemplate>
                             <%# "$" + Eval ("Precio") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                             <%# Eval ("Cantidad") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                             <%# "$" + Convert.ToDouble(Eval("Cantidad")) * Convert.ToDouble(Eval("Precio"))  %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                             <a href='deletefromcart.aspx?productId=<%# Eval ("ProductoId") %>' class="btn btn-danger">Eliminar</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="row">
                <div class="col-sm-12 col-lg-11 col-md-11">
                    <asp:Label ID="Total" CssClass="form-label" runat="server" Text="" Font-Bold="True"></asp:Label>
                </div>
                <div class="col-sm-12 col-md-1 col-lg-1">
                    <asp:Button ID="CheckOut" CssClass="btn btn-primary" runat="server" Text="Comprar" OnClick="CheckOut_Click" />
                </div>
            </div>
            
            <asp:HyperLink ID="QRUrl"  title="Click aquí para descargar el código" download runat="server"  >
                <asp:Image ID="QRImage" runat="server" />
            </asp:HyperLink>
           
        </div>
    </form>
</body>
</html>
