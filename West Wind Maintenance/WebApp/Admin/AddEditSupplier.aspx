<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEditSupplier.aspx.cs" Inherits="WebApp.Admin.AddEditSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1 class="page-header">Add/Edit Supplier</h1>
    </div>
    <div class="row">
        <div class="col-sm-6 form-inline">
            <h4>Actions:</h4>
            <div class="form-group">
                <asp:Label ID="CompanyNameLabel" runat="server" Text="Company Name" AssociatedControlID="SupplierDropDown" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="SupplierDropDown" runat="server" CssClass="form-control"></asp:DropDownList>
                <asp:LinkButton ID="LookUpSupplier" runat="server" CssClass="btn btn-primary" OnClick="LookUpSupplier_Click">Lookup Supplier</asp:LinkButton>
            </div>
        </div>
        <div class="col-sm-6">
            <h4>Notes:</h4>
        </div>

        <div class="row">
            <div class="col-md-12">
                <asp:Panel ID="MessagePanel" runat="server" Visible="false" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
                </asp:Panel>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <fieldset>
                    <legend>Supplier Details</legend>
                    <asp:Label ID="SupplierIdLabel" runat="server" Text="SupplierID" AssociatedControlID="CurrentSupplier"></asp:Label>
                    <asp:TextBox ID="CurrentSupplier" runat="server" Enabled="false"></asp:TextBox>

                    <asp:Label ID="Label1" runat="server" Text="SupplierID" AssociatedControlID="CurrentSupplier"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="false"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" Text="SupplierID" AssociatedControlID="CurrentSupplier"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
                </fieldset>
            </div>
        </div>
    </div>

    <script src="../Scripts/bootwrap-freecode.js"></script>
    <link href="../Content/bootwrap-freecode.css" rel="stylesheet" />
</asp:Content>
