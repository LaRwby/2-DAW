<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />

     <div class="tablagen">
              <div class="fila">
                <div class="col">Código Prectación </div>
                <div class="col2"><asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Descrpcion </div>
                <div class="col2"><asp:TextBox ID="txtDespre" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Importe Fijo </div>
                <div class="col2"><asp:TextBox ID="txtImpPre" runat="server" Width="360px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Porcentaje de Importe </div>
                <div class="col2"><asp:TextBox ID="txtPorPre" runat="server" Width="360px"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Tipo De Prestación </div>
                <div class="col2">
                    <asp:DropDownList ID="ddTipPre" runat="server">
                        <asp:ListItem>Dentaria</asp:ListItem>
                        <asp:ListItem>Familiar</asp:ListItem>
                        <asp:ListItem Selected="True">Ocular</asp:ListItem>
                        <asp:ListItem>Otras</asp:ListItem>
                    </asp:DropDownList>
                </div>
                </div>
                <div class="fila">
                 <div class="col"></div>  
                 <div class="col2"><asp:Button ID="cmdEnviar" runat="server" Text="Enviar" /></div>
                </div>
         </div>
        </form>
</body>
</html>
