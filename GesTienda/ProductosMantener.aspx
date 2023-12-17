<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Mantenimiento productos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PRODUCTO]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUnidad] FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DesTip], [IdTipo] FROM [TIPO]"></asp:SqlDataSource>
    <div class="contenidotitulo">
        Mantenimiento productos</div>
    <br />
    <asp:GridView CssClass="mantenimientotabla" ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="50%" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdProducto" HeaderText="Id. Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" DataFormatString="{0:n2} €" HeaderText="Precio" SortExpression="PrePro">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPrevious" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <div class="mantenimientolabel">
        <div class="tablacontroles">
            <div class="linea">
                <div class="etiqueta">
                    <asp:Label ID="lblIdProducto" runat="server" AssociatedControlID="txtIdProducto" Text="Id. Producto" Font-Bold="True"></asp:Label>
                </div>
                <div class="control" >
                    <asp:TextBox ID="txtIdProducto" runat="server" Enabled="false"></asp:TextBox>
                </div>
            </div>        
            <div class="linea">
                <div class="etiqueta">
                    <asp:Label ID="lblDesPro" runat="server" AssociatedControlID="txtDesPro" Text="Descripción" Font-Bold="True"></asp:Label>
                </div>
                <div class="control" >
                    <asp:TextBox ID="txtDesPro" runat="server" Enabled="false"></asp:TextBox>     
                </div>
            </div>     
            <div class="linea">
                <div class="etiqueta">
                    <asp:Label ID="lblPrePro" runat="server" AssociatedControlID="txtPrePro" Text="Precio" Font-Bold="True"></asp:Label>
                </div>
                <div class="control" >
                    <asp:TextBox ID="txtPrePro" runat="server" Enabled="false" Text="0"></asp:TextBox>
                </div>
            </div>     
            <div class="linea">
                <div class="etiqueta">
                    <asp:Label ID="lblIdUnidad" runat="server" AssociatedControlID="ddlIdUnidad" Text="Unidad" Font-Bold="True"></asp:Label>
                </div>
                <div class="control" >
                    <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="false" DataSourceID="SqlDataSource2" DataTextField="IdUnidad"></asp:DropDownList>
                </div>
            </div>     
            <div class="linea">
                <div class="etiqueta">
                    <asp:Label ID="lblIdTipo" runat="server" AssociatedControlID="ddlIdTipo" Text="Tipo Producto" Font-Bold="True"></asp:Label>
                </div>
                <div class="control" >
                    <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList>
                </div>
            </div>
        </div>     
        <div class="botones">
            <asp:Button ID="btnNuevo" Text="Nuevo" runat="server" OnClick="btnNuevo_Click" />
            <asp:Button ID="btnEditar" Text="Editar" runat="server" Visible="false" OnClick="btnEditar_Click"/>
            <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" Visible="false" OnClick="btnEliminar_Click"/>
            <asp:Button ID="btnInsertar" Text="Insertar" runat="server" Visible="false" OnClick="btnInsertar_Click"/>
            <asp:Button ID="btnModificar" Text="Modificar" runat="server" Visible="false" OnClick="btnModificar_Click"/>
            <asp:Button ID="btnBorrar" Text="Borrar" runat="server" Visible="false" OnClick="btnBorrar_Click"/>
            <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" Visible="false" OnClick="btnCancelar_Click"/>
        </div>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblMensajes" runat="server"></asp:Label>
    </div>
</asp:Content>
