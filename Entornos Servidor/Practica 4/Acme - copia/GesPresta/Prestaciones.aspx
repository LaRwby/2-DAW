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
                <div class="col2"><asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtCodPre" runat="server" ControlToValidate="txtCodPre" ErrorMessage="El codigo de prestacion es obligatorio" ForeColor="#FF9999"></asp:RequiredFieldValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Descrpcion </div>
                <div class="col2"><asp:TextBox ID="txtDespre" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Importe Fijo </div>
                <div class="col2"><asp:TextBox ID="txtImpPre" runat="server" Width="360px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtImpPre" runat="server" ControlToValidate="txtImpPre" ErrorMessage="El Importe fijo es Obligatorio" ForeColor="#FF9999"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RangeValidator ID="rngtxtImpPre" runat="server" ControlToValidate="txtImpPre" ErrorMessage="El Valor introducido debe estar entre 0 y 500" ForeColor="#FF9999" MaximumValue="500,00" MinimumValue="0,00" Type="Double"></asp:RangeValidator>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Porcentaje de Importe </div>
                <div class="col2"><asp:TextBox ID="txtPorPre" runat="server" Width="360px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdtxtPorPre" runat="server" ControlToValidate="txtPorPre" ErrorMessage="El Porcentaje de Importe es obligatorio" ForeColor="#FF9999"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RangeValidator ID="rngtxtPorPre" runat="server" ControlToValidate="txtPorPre" ErrorMessage="El Valor introducido debe estar entre 0 y 15%" ForeColor="#FF9999" MaximumValue="15,00" MinimumValue="0,00" Type="Double"></asp:RangeValidator>
                  </div>
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
