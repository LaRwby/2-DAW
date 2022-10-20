<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Error ASP.NET:"></asp:Label>
<br />
    <asp:Label ID="lblErrorASP" runat="server" Text="lblErrorASP" ForeColor="#FF9999"></asp:Label>
    <br />
<br />
<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Error ADO.NET:"></asp:Label>
    <br />
    <asp:Label ID="lblErrorADO" runat="server" Text="lblErrorADO" ForeColor="#FF9999" Width="50%"></asp:Label>
</asp:Content>
