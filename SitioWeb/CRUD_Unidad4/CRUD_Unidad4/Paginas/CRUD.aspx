<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MP.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="CRUD_Unidad4.Paginas.CRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    REGISTRO
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <BR />
    <center><div class="mx-auto" style="width:250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div></center>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
       <div>
            <div class="mb-5">
            <label class="form-label">Nombre</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre"></asp:TextBox>
            </div>
            <div class="mb-5">
            <label class="form-label">Edad</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbedad"></asp:TextBox>
            </div>
            <div class="mb-5">
            <label class="form-label">Email</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="tbemail"></asp:TextBox>
            </div>
            <div class="mb-5">
            <label class="form-label">Fecha de Nacimiento</label>
            <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbdate"></asp:TextBox>
            </div>
        <center><asp:Button runat="server" CssClass="btn btn-primary" ID="BtnCreate" Text="Create" Visible="false" OnClick="BtnCreate_Click"/>
        <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnUpdate" Text="Update" Visible="false" OnClick="BtnUpdate_Click"/>
        <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnDelete" Text="Delete" Visible="false" OnClick="BtnDelete_Click"/>
        <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnReturn" Text="Volver" Visible="True" OnClick="BtnReturn_Click"/></center>
       </div>
    </form>
</asp:Content>


