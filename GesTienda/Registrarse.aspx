<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="cabecera">
       <div id="cabecera1">
          <br />
          comerciodaw.com &nbsp;
       </div>
       <div id="cabecera2">
           <br />
           &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
           <br />
       </div>
    </div>

    <div align="center">
        <div class="contenidotitulo">GesTienda</div>
        <br />
        <div class="contenidosubtitulo">Registro de usuario</div>
        <br />

        <table class="registro" style="border-collapse:collapse;">
            <tr>
                <td>
                    <asp:Label ID="lblCorCli" runat="server">Correo electrónico</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorCli" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword1" runat="server">Contraseña</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword2" runat="server">Introduzca nuevamente la contraseña</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword2" runat="server"  TextMode="Password"/>
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblIdCliente" runat="server">NIF/NIE/CIF</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIdCliente" runat="server" />
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblNomCli" runat="server">Nombre/Razón Social</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNomCli" runat="server" />
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblDirCli" runat="server">Dirección</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDirCli" runat="server" />
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblPobCli" runat="server">Población</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPobCli" runat="server" />
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblCpoCli" runat="server">Código postal</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCpoCli" runat="server" />
                </td>
            </tr><tr>
                <td>
                    <asp:Label ID="lblTelCli" runat="server">Teléfono</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelCli" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button runat="server" ID="btnInsertar" Text="Insertar" OnClick="btnInsertar_Click"/>
        <br />
        <br />
        <asp:LinkButton runat="server" Text="Ir a inicio" PostBackUrl="~/Default.aspx"/>
        <br />
        <br />
        <asp:Label runat="server" ID="lblMensajes" />
        <br />
        <br />
        <br />
        <div id="pie">
            <br />
            <br />
            © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
            <br />
            IES Mare Nostrum (Alicante)
        </div>
    </div>
    </form>
</body>
</html>
