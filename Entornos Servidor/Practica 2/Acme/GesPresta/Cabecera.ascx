<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<link href="HojaEstilo.css" rel="stylesheet" />
<div id="link">
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados.aspx">Empleados</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones.aspx">Prestaciones</asp:LinkButton>
</div>

<div class="Cabezera">

    ACME INNOVACIÓN, S.FIG

</div>

<div class="Cabezera2">

    Gestión de Prestaciones Sociales

</div>

