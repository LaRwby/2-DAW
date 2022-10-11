<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

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
                <div class="col">Fecha de Nacimiento :</div>
                <div class="col2"><asp:TextBox ID="txtFnaEmp" runat="server" Width="275px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Ingreso :</div>
                <div class="col2"><asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox></div>
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
                <div class="fila">
                 <div class="col"></div>  
                 <div class="col2"><asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" /></div>
                </div>
             </div>
        <div class="etiqueta"><asp:Label ID="lblValores" runat="server" Width="45%" Visible="False" BackColor="#66FFFF"></asp:Label></div>
    </form>
</body>
</html>
