<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MP.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CRUD_Unidad4.Paginas.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    INICIO
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <center><div class="max-auto" style="width:300px">
            <h2>Lista de registros</h2>
        </div></center>
        <br />
        <div class="container">
                    <div class="row">
                        <div class="col align-self-end">
                        <asp:Button runat="server" Id="BtnCreate" class="btn form-control btn-outline-success" Text="Crear Usuario" OnClick="BtnCreate_Click" />
                        </div>
                    </div>
                </div>
        <br />
        <center><div class="container row">
            <div class="table small">
                <asp:GridView runat="server" ID="gvusuarios" class="table table-borderless table-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones del administrador">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Read" CssClass="btn form-control-sm btn-info" ID="BtnRead" OnClick="BtnRead_Click"/>
                                <asp:Button runat="server" Text="Update" CssClass="btn form-control-sm btn-warning" ID="BtnUpdate" OnClick="BtnUpdate_Click"/>
                                <asp:Button runat="server" Text="Delete" CssClass="btn form-control-sm btn-danger" ID="BtnDelate" OnClick="BtnDelate_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div></center>

    </form>
</asp:Content>

