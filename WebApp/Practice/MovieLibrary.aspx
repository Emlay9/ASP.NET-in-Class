<%@ Page Title="MovieLibrary" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"  CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.Practice.MovieLibrary" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Movie Library</h1>
    <p>Fill out the form below to add information on the movie for your movie library.</p>
    <div class="row">
        <div class="col-md-6">
            <fieldset>
                <asp:Label runat="server" AssociatedControlID="MovieTitle" Text="Title"  />
                <asp:TextBox runat="server" ID="MovieTitle"/>
                <br />
                <asp:Label runat="server" Text="Year" AssociatedControlID="Year" />
                <asp:TextBox runat="server" ID="Year" TextMode="Number"/>
                <br />
                <asp:Label runat="server" Text="Media" AssociatedControlID="Media" />
                <asp:RadioButtonList ID="Media" runat="server">
                    <asp:ListItem Text="DVD" />
                    <asp:ListItem Text="VHS" />
                    <asp:ListItem Text="File" />
                </asp:RadioButtonList>
                <br />
                <asp:Label runat="server" Text="Rating" AssociatedControlID="Rating" />
                <asp:RadioButtonList ID="Rating" runat="server">
                    <asp:ListItem Text="General (G)" />
                    <asp:ListItem Text="Parental Guidance (PG)" />
                    <asp:ListItem Text="14A" />
                    <asp:ListItem Text="18A" />
                    <asp:ListItem Text="Restricted" />
                </asp:RadioButtonList>
                <br />
                <asp:Label runat="server" Text="Reviews (1-5 Stars)" AssociatedControlID="Reviews" />
                <asp:DropDownList ID="Reviews" runat="server">
                     <asp:ListItem Text="1 Star" />
                     <asp:ListItem Text="2 Star" />
                     <asp:ListItem Text="3 Star" />
                     <asp:ListItem Text="4 Star" />
                     <asp:ListItem Text="5 Star" />
                </asp:DropDownList>
                <br />
            </fieldset>
            <asp:Button runat="server" Text="Add to Library" CssClass="btn btn-primary" OnClick="AddToLibrary_Click"/>
        </div>
        <div class="col-md-6">
            <asp:ValidationSummary runat="server" HeaderText="Please correct the following before resubmitting the form"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="MovieTitle" ErrorMessage="Title is required" Display="None"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Year" ErrorMessage="Year is required" Display="None"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Media" ErrorMessage="You must indicate the type of media on which the movie is stored." Display="None"/>
            <asp:CompareValidator runat="server" ControlToValidate="Year" ErrorMessage="Year must be greater or equal to 1900" Operator="GreaterThanEqual" ValueToCompare="1900" />

            <asp:GridView runat="server" ID="MovieGrid" CssClass="table table-striped"/>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
