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
                <asp:TextBox runat="server" ID="Artists" TextMode="MultiLine" />
                <br />
                <asp:Label runat="server" AssociatedControlID="Year" Text="Year" />
                <asp:TextBox runat="server" ID="Year" TextMode="Number" />
                <br />
                <asp:Label runat="server" AssociatedControlID="TracksNumber" Text="Number of Tracks" />
                <asp:TextBox runat="server" ID="TracksNumber" TextMode="Number"/>
                <br />
                <asp:Button runat="server" Text="Add to Library" CssClass="btn btn-primary" OnClick="AddCD_Click"/>
            </fieldset>
        </div>
        <div class="col-md-6">
                <%--Validation Controls--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldCDTitle" ControlToValidate="CDTitle" runat="server" ErrorMessage="Title is required for the CD information" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldYear" ControlToValidate="Year" runat="server" ErrorMessage="Year is required" Display="None"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldTracks" runat="server"
                    ControlToValidate="TracksNumber"  
                    ErrorMessage="Number of tracks is required" 
                    Display="None" />

                <asp:CompareValidator ID="MinYear" Display="None" runat="server" ControlToValidate="Year" ErrorMessage="Year must be 1900 or greater" ValueToCompare="1900" Operator="GreaterThanEqual"></asp:CompareValidator>
                <asp:CompareValidator ID="MinTracks" Display="None" runat="server" ControlToValidate="TracksNumber" ErrorMessage="Number of tracks must be greater than 0" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>

                <%-- Grid of Results --%>
                <asp:GridView ID="CDGrid" runat="server" CssClass="table table-striped"></asp:GridView>
         </div>
    </div>
   
     <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
