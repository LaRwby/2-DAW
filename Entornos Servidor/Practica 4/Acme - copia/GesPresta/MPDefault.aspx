<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="MPDefault.aspx.cs" Inherits="GesPresta.MPDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div class="texto">
       <p> La corporación ACME está comprometida con sus empleado. Para ello ha establecido una serie de prestaciones que pueden utulizar sus empleados para obtener ayuda sociales asiciados a diversos gastos de tipo familiar, médico, etc.</p>
       <p> Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionada con la prestaación de ayudas a los empleados.</p>
       <p> para cualquier duda o consulta puede contactar con el Departamente de Ayuda Sociall <asp:LinkButton ID="LinkButton1" runat="server">Ayuda.social@acme.com</asp:LinkButton></p>
    </div>
    
</asp:Content>
