<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar sesión</title>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <br />
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
            <br />
            <asp:Login runat="server" ID="Login1" OnAuthenticate="Login1_Authenticate">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" class="contenidosubtitulo">Iniciar sesión</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Correo electrónico:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El correo electrónico es obligatorio." ToolTip="El correo electrónico es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            <br />
            <asp:Label ID="lblMensajes" runat="server"/>
        </div>
        <br />
        <br />
        <br />
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
    </form>
</body>
</html>