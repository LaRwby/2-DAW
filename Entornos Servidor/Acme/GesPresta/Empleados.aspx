<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

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
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>

             <div class="tablagen">
              <div class="fila">
                <div class="col">Código Empleado :</div>
                <div class="col2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">NIF :</div>
                <div class="col2"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Apellidos y Nombre :</div>
                <div class="col2"><asp:TextBox ID="TextBox3" runat="server" Width="360px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Dirección :</div>
                <div class="col2"><asp:TextBox ID="TextBox4" runat="server" Width="410px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Teléfonos :</div>
                <div class="col2"><asp:TextBox ID="TextBox5" runat="server" Width="410px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Nacimiento :</div>
                <div class="col2"><asp:TextBox ID="TextBox6" runat="server" Width="275px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Ingreso :</div>
                <div class="col2"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Sexo :</div>
                <div class="col2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Hombre</asp:ListItem>
                        <asp:ListItem>Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
               </div>
               <div class="fila">
                <div class="col">Departamento :</div>
                <div class="col2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Investigación</asp:ListItem>
                        <asp:ListItem>Desarrollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                <div class="fila">
                 <div class="col"></div>  
                 <div class="col2"><asp:Button ID="Button1" runat="server" Text="Button" /></div>
              </div>
            </div>

    </form>
</body>
</html>
