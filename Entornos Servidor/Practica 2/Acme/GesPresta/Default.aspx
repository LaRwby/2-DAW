<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="HojaEstilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
    <div class="texto">
       <p> La corporación ACME está comprometida con sus empleado. Para ello ha establecido una serie de prestaciones que pueden utulizar sus empleados para obtener ayuda sociales asiciados a diversos gastos de tipo familiar, médico, etc.</p>
       <p> Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionada con la prestaación de ayudas a los empleados.</p>
       <p> para cualquier duda o consulta puede contactar con el Departamente de Ayuda Social <asp:LinkButton ID="LinkButton1" runat="server">Ayuda.social@acme.com</asp:LinkButton></p>
    </div>
    </form>
</body>
</html>
