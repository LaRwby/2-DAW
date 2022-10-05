<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="HojaEstilo.css" rel="stylesheet" />
    <style type="text/css">
        .Calendario {
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="Titulo3">DATOS DE LOS EMPLEADOS</div>
        <div class="Contenido">
             <div class="tablagen">
                 <div class="fila">
                        <div class="col">Código Empleado :</div>
                        <div class="col2"><asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">NIF :</div>
                        <div class="col2"><asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">Apellidos y Nombre :</div>
                        <div class="col2"><asp:TextBox ID="txtNomEmp" runat="server" Width="360px"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">Dirección :</div>
                        <div class="col2"><asp:TextBox ID="txtDirEmp" runat="server" Width="410px"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">Ciudad :</div>
                        <div class="col2"><asp:TextBox ID="txtCiuEmp" runat="server" Width="410px"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">Teléfonos :</div>
                        <div class="col2"><asp:TextBox ID="txtTelEmp" runat="server" Width="410px"></asp:TextBox></div>
                 </div>
                 <div class="fila">
                        <div class="col">Sexo :</div>
                        <div class="col2">
                            <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Hombre</asp:ListItem>
                            <asp:ListItem>Mujer</asp:ListItem>
                            </asp:RadioButtonList>
                 </div>
                 </div>
                 <div class="fila">
                       <div class="col">Departamento :</div>
                       <div class="col2">
                            <asp:DropDownList ID="ddlDepEmp" runat="server">
                                <asp:ListItem>Investigación</asp:ListItem>
                                <asp:ListItem>Desarrollo</asp:ListItem>
                                <asp:ListItem>Innovación</asp:ListItem>
                                <asp:ListItem>Administración</asp:ListItem>
                                </asp:DropDownList>
                 </div>
                 </div>
                 
                 </div>
           
                 <div class="seccion">
                     <div class="celdas" id="Uno">Fecha de Nacimiento
                            &nbsp;<asp:TextBox ID="TxtNacEmp" runat="server" style="margin-left: 20px" Width="115px" OnTextChanged="TxtNacEmp_TextChanged"></asp:TextBox>
                     </div>
                     <div class="celdas" id="Dos"><asp:Calendar ID="CalNacEmp" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar></div>
                     <div class="celdas" id="Tres">Fecha de Ingreso
                            &nbsp;<asp:TextBox ID="TxtIngEmp" runat="server" style="margin-left: 20px" OnTextChanged="TxtIngEmp_TextChanged"></asp:TextBox>
                     </div>
                     <div class="celdas" id="Cuatro"><asp:Calendar ID="CalIngEmp" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar></div>
                     <div class="celdas" id="Cinco">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Antigüedad: &nbsp;
                         &nbsp;<asp:TextBox ID="TxtAño" runat="server" style="margin-left: 20px" Width="75px"></asp:TextBox>   &nbsp;&nbsp;Años <asp:TextBox ID="TxtMes" runat="server" style="margin-left: 20px" Width="75px"></asp:TextBox>   &nbsp;Meses <asp:TextBox ID="TxtDia" runat="server" style="margin-left: 20px" Width="75px"></asp:TextBox>   &nbsp;Dias
                     </div>
                     
                 </div>
            <div class="Boton">
                <asp:Label ID="lblValores" runat="server" Width="45%" Visible="False" BackColor="#66FFFF"></asp:Label>
                <br />
                <asp:Label ID="lblError1" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblError2" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblError3" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
            </div>
         </div>
    </form>

</body>
</html>
