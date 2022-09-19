<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<style type="text/css">
    div{
        font-size: 12pt;
        text-align: center;
        padding:initial;
        margin:auto;
    }
    .Cabezera {
        font-size: 20pt;
        font-family: 'Lucida Sans';
        border-bottom: 1.5pt solid ;
    }
    #link{
        margin-bottom: 10pt;
        border-bottom: 1.5pt solid ;
    }
    .Cabezera2{
         font-family: 'Lucida Sans';
    }
</style>

<div id="link">
    <asp:LinkButton ID="LinkButton1" runat="server">Inicio</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server">Empleados</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server">Prestaciones</asp:LinkButton>
</div>

<div class="Cabezera">

    ACME INNOVACIÓN, S.FIG

</div>

<div class="Cabezera2">

    Gestión de Prestaciones Sociales

</div>

