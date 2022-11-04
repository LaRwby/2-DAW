<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Estilos/HojaEstilo2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
           <div>
            <br />
            <div id="cabecera">
               <div id="cabecera1">
                  <br />
                  comerciodaw.com &nbsp;
               </div>
               <div id="cabecera2">
                   <br />
                   &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                   <br />
               </div>
            </div>
          </div>
           <br />
        <div class="contenidotitulo" align="center">GesTienda</div>
        <div style="font-size:14px;font-weight: bold" align="center">Registro de usuarios</div>
           <br />
    <div class="tablagen">
              <div class="fila">
                <div class="col">Correo Electonico :</div>
                <div class="col2"><asp:TextBox ID="txtCorCli" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Contraseña :</div>
                <div class="col2"><asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Introducir nuevamente contraseña :</div>
                <div class="col2"><asp:TextBox ID="txtPassword2" runat="server" Width="360px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">NIF/NIE/CIF :</div>
                <div class="col2"><asp:TextBox ID="txtIdCliente" runat="server" Width="410px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Nombre/Razon Social :</div>
                <div class="col2"><asp:TextBox ID="txtNomCli" runat="server" Width="410px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Direccion :</div>
                <div class="col2"><asp:TextBox ID="txtDirCli" runat="server" Width="410px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Poblacion :</div>
                <div class="col2"><asp:TextBox ID="txtPobCli" runat="server" Width="275px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Codigo Postal :</div>
                <div class="col2"><asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Telefono :</div>
                <div class="col2"><asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox></div>
              </div>
               <div class="fila">
                 <div class="col"></div>  
                 <div class="col2"><asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click"/></div>
               </div>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server">Ir a Inicio</asp:HyperLink>
        <asp:Label ID="lblMensajes" runat="server"></asp:Label>
    </form>
</body>
</html>
