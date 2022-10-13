<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<link href="HojaEstilo.css" rel="stylesheet" />
<div class="Cabezera">
<div id="link">
    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="False">Inicio</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados.aspx" CausesValidation="False">Empleados</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones.aspx" CausesValidation="False">Prestaciones</asp:LinkButton>
</div>

<div class="Titulo">

    ACME INNOVACIÓN, S.FIG

</div>

<div class="Titulo2">

    Gestión de Prestaciones Sociales

</div>
</div>
