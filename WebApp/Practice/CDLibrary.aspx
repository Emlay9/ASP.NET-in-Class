<%@ Page Title="CDLibrary" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"  CodeBehind="CDLibrary.aspx.cs" Inherits="WebApp.Practice.CDLibrary" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CD Library</h1>
    <p>Fill the form below to add a music CD to your personal library.</p>
    <div class="row">
        <div class="col-md-6">
          <fieldset>
                <asp:Label runat="server" AssociatedControlID="Barcode" Text="ISBN (Barcode)" />
                <asp:Textbox runat="server" ID="Barcode"/>
                <br />
                <asp:Label runat="server" AssociatedControlID="CDTitle" Text="Title" />
                <asp:TextBox runat="server" ID="CDTitle" />
                <br />
                <asp:Label runat="server" AssociatedControlID="Artists" Text="Artist(s)" />
                <asp:TextBox runat="server" ID="artists" TextMode="MultiLine" />
                <br />
                <asp:Label runat="server" AssociatedControlID="Year" Text="Year" />
                <asp:TextBox runat="server" ID="Year" TextMode="Number" />
                <br />
                <asp:Label runat="server" AssociatedControlID="TracksNumber" Text="Number of Tracks" />
                <asp:TextBox runat="server" ID="TracksNumber" TextMode="Number"/>
                <br />
                <asp:Button runat="server" Text="Add to Library" CssClass="btn btn-primary"/>
            </fieldset>
        </div>
    </div>
     <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
