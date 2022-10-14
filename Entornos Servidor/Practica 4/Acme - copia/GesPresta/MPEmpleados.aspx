<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.MPEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="tablagen">
              <div class="fila">
                <div class="col">Código Empleado :</div>
                <div class="col2"><asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;
                    </div>
              </div>
              <div class="fila">
                <div class="col">NIF :</div>
                <div class="col2"><asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;
                    </div>
              </div>
              <div class="fila">
                <div class="col">Apellidos y Nombre :</div>
                <div class="col2"><asp:TextBox ID="txtNomEmp" runat="server" Width="360px"></asp:TextBox>
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
                  </div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Nacimiento :</div>
                <div class="col2"><asp:TextBox ID="txtFnaEmp" runat="server" Width="275px"></asp:TextBox>
                  &nbsp;</div>
              </div>
              <div class="fila">
                <div class="col">Fecha de Ingreso :</div>
                <div class="col2"><asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;
                  </div>
              </div>
              <div class="fila">
                <div class="col">Sexoo :</div>
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

        </asp:Content>
