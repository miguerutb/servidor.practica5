<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenidotitulo">
            Aplicación Web GesTienda
        </div>
        <br />
        <div class="contenidosubtitulo">
            Error en tiempo de ejecución
        </div>
        <br />
        <div style="border-style: solid; border-width: thin; width: 50%; margin: 0 auto; padding: 10px;">
            <div>Error ASP.NET:</div>
            <asp:Label ID="lblErrorASP" runat="server" Text="ErrorASP" ForeColor="Red" ></asp:Label>

            <br />
            <br />

            <div>Error ADO.NET:</div>
            <asp:Label ID="lblErrorADO" runat="server" Text="ErrorADO" ForeColor="Red" ></asp:Label>
        </div>
    </form>
</body>
</html>
