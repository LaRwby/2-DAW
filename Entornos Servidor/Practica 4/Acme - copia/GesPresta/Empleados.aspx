<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados"%>

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
                <div class="col2"><asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El Codigo de Empleado es obligatorio" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                  &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regtxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El 
formato de los datos a introducir debe ser: una letra y 5 dígitos. " ForeColor="#66FF99" ValidationExpression="\w\d{5}"></asp:RegularExpressionValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">NIF :</div>
                <div class="col2"><asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El NIF del empleado es obligatorio" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                  &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regtxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El formato de los datos a introducir debe ser: 8 dígitos, un guion y una letra. " ForeColor="#66FF99" ValidationExpression="\d{8}-\w"></asp:RegularExpressionValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Apellidos y Nombre :</div>
                <div class="col2"><asp:TextBox ID="txtNomEmp" runat="server" Width="360px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtNomEmp" runat="server" ControlToValidate="txtNomEmp" ErrorMessage="El Nombre y los apellidos son obligatorios" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                  </div>
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
                <div class="col2"><asp:TextBox ID="txtTelEmp" runat="server" Width="410px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtTelEmp" runat="server" ControlToValidate="txtTelEmp" ErrorMessage="El Telefono es obligatorio" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regtxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="El formato de los datos a introducir debe ser:  Formato de fecha dd/mm/aaaa. " ForeColor="#66FF99" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Nacimiento :</div>
                <div class="col2"><asp:TextBox ID="txtFnaEmp" runat="server" Width="275px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="La Fecha de Nacimiento es obligatoria" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                  &nbsp;<asp:CompareValidator ID="cmptxtFnaEmp" runat="server" ControlToCompare="txtFinEmp" ControlToValidate="txtFnaEmp" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ForeColor="#FF9999" Operator="LessThan" Type="Date">*</asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="regtxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="El formato de los datos a introducir debe ser:  Formato de fecha dd/mm/aaaa. " ForeColor="#66FF99" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Ingreso :</div>
                <div class="col2"><asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="La Fecha de Ingreso es obligatoria" ForeColor="#FF9999">*</asp:RequiredFieldValidator>
                  &nbsp;&nbsp;&nbsp;
                  </div>
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
                 <div class="col2"><asp:Button ID="cmdEnviar" runat="server" Text="Enviar" /></div>
                </div>
            </div>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="#FF9999" />

    </form>
</body>
</html>
