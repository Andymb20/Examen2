<%@ Page Title="" Language="C#" MasterPageFile="~/Encuesta.Master" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="Formularios.Encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblNumeroFormulario" runat="server" Text="Texto aquí"></asp:Label>
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
    <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
    <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo Electrónico"></asp:TextBox>
    <asp:TextBox ID="txtFechaNacimiento" runat="server" placeholder="Fecha de Nacimiento"></asp:TextBox>
    <asp:RadioButtonList ID="rblCarroPropio" runat="server">
        <asp:ListItem Text="Sí" Value="true"></asp:ListItem>
        <asp:ListItem Text="No" Value="false"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    <asp:Button ID="btnReporte" runat="server" Text="Reporte" OnClick="btnReporte_Click" />
</asp:Content>
