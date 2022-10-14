<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="tablagen">
              <div class="fila">
                <div class="col">Código Prectación </div>
                <div class="col2"><asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox>
                  </div>
              </div>
              <div class="fila">
                <div class="col">Descrpcion </div>
                <div class="col2"><asp:TextBox ID="txtDespre" runat="server"></asp:TextBox></div>
              </div>
              <div class="fila">
                <div class="col">Importes Fijo </div>
                <div class="col2"><asp:TextBox ID="txtImpPre" runat="server" Width="360px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
              </div>
              <div class="fila">
                <div class="col">Porcentaje de Importe </div>
                <div class="col2"><asp:TextBox ID="txtPorPre" runat="server" Width="360px"></asp:TextBox>
&nbsp;
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
</asp:Content>
