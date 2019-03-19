<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewSuppliers.aspx.cs" Inherits="WebApp.ViewSuppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Suppliers</h1>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView runat="server" ID="SupplierGridView" CssClass="table tablle-hover"></asp:GridView>
        </div>
        
    </div>

</asp:Content>
