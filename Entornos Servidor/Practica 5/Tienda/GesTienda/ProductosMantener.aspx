<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
     <div class="contenidotitulo">Mantenimiento productos</div>
     <asp:Label ID="lblResultado" runat="server"></asp:Label>
     <br />
     <br />
     <asp:Label ID="lblMensajes" runat="server" ForeColor="red"></asp:Label>
     <br />
     <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUnidad] FROM [UNIDAD]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
     <br />
     <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="50%" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="IdProducto" HeaderText="ID Producto" ReadOnly="True" SortExpression="IdProducto" />
             <asp:BoundField DataField="DesPro" HeaderText="Descripcion" SortExpression="DesPro" />
             <asp:BoundField DataField="PrePro" DataFormatString="{0:n2}" HeaderText="Precio" SortExpression="PrePro">
             <ItemStyle HorizontalAlign="Right" />
             </asp:BoundField>
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerSettings FirstPageText="Primera" LastPageText="Ultima" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
     <br />
     <asp:Label ID="lblIdProducto" runat="server" Text="ID Producto"></asp:Label>
     &nbsp;
     <asp:TextBox ID="txtIdProducto" runat="server" Enabled="False"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="lblDesPro" runat="server" Text="Descripción"></asp:Label>
     &nbsp;
     <asp:TextBox ID="txtDesPro" runat="server" Enabled="False"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="lblPrePro" runat="server" Text="Precio"></asp:Label>
     &nbsp;
     <asp:TextBox ID="txtPrePro" runat="server" Enabled="False"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
     &nbsp;
     <asp:DropDownList ID="ddlIdUnidad" runat="server" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad" Enabled="False"></asp:DropDownList>
     <br />
     <br />
     <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
     &nbsp;
     <asp:DropDownList ID="ddlIdTipo" runat="server" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo" Enabled="False"></asp:DropDownList>
     <br />
     <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" Visible="False" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" Visible="False" />
</asp:Content>
