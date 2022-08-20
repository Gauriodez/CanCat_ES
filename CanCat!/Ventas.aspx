<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="CanCat_.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"/>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/html5-qrcode" type="text/javascript">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ventas</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
            <a class="navbar-brand" href="index">Inicio</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link">Admin</a>
                    <a class="nav-link" href="administrarproductos.aspx">Productos</a>
                    <a class="nav-link active" aria-current="page">Ventas</a>
                    <a class="nav-link" href="carrito.aspx">Carrito</a>
                    <a class="nav-link" href="logout.aspx">Cerrar Sesión</a>
                </div>
            </div>
            </div>
        </nav>
        <div class="container my-3">
            <div class="mb-2">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <asp:TextBox ID="Code" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-12 col-md-1 col-lg-1">
                        <button class="btn btn-primary" id="scan" >Escanear</button>
                    </div>
                    <div class="col-sm-12 col-md-1 col-lg-1">
                         <asp:Button ID="Search" cssClass="btn btn-success" runat="server" Text="Buscar" OnClick="Search_Click" />
                    </div>
                </div>
			    
                
               
                <div id="preview" class="my-3"></div>
            </div>
            <asp:GridView ID="Sale" CssClass="table table-dark table-striped table-hover table-bordered my-3"  runat="server"></asp:GridView>
            <asp:GridView ID="Sales" CssClass="table table-striped table-hover table-bordered" runat="server"></asp:GridView>
        </div>
    </form>
    <script type="module">

        
        let txtCode = document.getElementById('Code')
        function onScanSuccess(decodedText, decodedResult) {
            // handle the scanned code as you like, for example:
            txtCode.value = decodedText;
            console.log(`Code matched = ${decodedText}`, decodedResult);
        }
        function onScanFailure(error) {
            // handle scan failure, usually better to ignore and keep scanning.
            // for example:
            console.log(`Error al escanear = ${error}`);
        }
        let html5QrcodeScanner = new Html5QrcodeScanner(
        "preview",
        { fps: 20, qrbox: {width: 250, height: 250} },
        /* verbose= */ false);

        $('#scan').click(function (e) {
            e.preventDefault();
            html5QrcodeScanner.render(onScanSuccess, onScanFailure)
        })
       
       
	</script>
</body>
</html>
