<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KDContest.aspx.cs" Inherits="KDContest.KDContest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>Koder's Dinner - Contest Entry</h1>
    </div>
    <div class="row col-md-12">
        <blockquote style="font-style: italic">
            This illustrates some simple controls to fill out an entry form for a contest
        </blockquote>
    </div>
    <div class="row">
        <div class="col-md-6">
            <p>Please fill out the following forn to enter the contest. This contest is only available to residents in western Canada.</p>
            <fieldset>
                <legend>Entry Form</legend>
                <asp:Label ID="EntryCodeLabel" runat="server" AssociatedControlID="EntryCode">Entry Code</asp:Label>
                <asp:TextBox ID="EntryCode" runat="server" />

                <asp:Label ID="AgreeLabel" runat="server">Terms and Conditions</asp:Label>
                <asp:CheckBox ID="AgreeToTerms" runat="server" Text="I agree to the terms of the contest" />

                <hr />

                <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName">First Name</asp:Label>
                <asp:TextBox ID="FirstName" runat="server" />

                <asp:Label ID="Label2" runat="server" AssociatedControlID="LastName">Last Name</asp:Label>
                <asp:TextBox ID="LastName" runat="server" />

                <asp:Label ID="Label3" runat="server" AssociatedControlID="Email">Email</asp:Label>
                <asp:TextBox ID="Email" runat="server" TextMode="Email"/>

                <asp:Label ID="Label4" runat="server" AssociatedControlID="City">City</asp:Label>
                <asp:TextBox ID="City" runat="server" />

                <asp:Label ID="Label7" runat="server" AssociatedControlID="Province">Province</asp:Label>
                <asp:DropDownList ID="Province" runat="server">
                    <asp:ListItem Value="">[Choose Province]</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>BC</asp:ListItem>
                    <asp:ListItem>SK</asp:ListItem>
                    <asp:ListItem>MB</asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="PostalCodeLabel" runat="server" AssociatedControlID="PostalCode">Postal Code</asp:Label>
                <asp:TextBox ID="PostalCode" runat="server" />

                <asp:Label ID="Label6" runat="server" AssociatedControlID="Age">Age</asp:Label>
                <asp:TextBox ID="Age" runat="server" TextMode="Number"/>

            </fieldset>
            <br />
            <asp:LinkButton ID="Submit" runat="server" CssClass="btn btn-primary" OnClick="Submit_Click">Submit</asp:LinkButton>
            <asp:LinkButton ID="ClearForm" runat="server" CssClass="btn btn-default" OnClick="ClearForm_Click">Clear Form</asp:LinkButton>
            <br />
            <p>Note: You must agree to the contest terms in order to be entered.</p>
        </div>

        <div class="col-md-6">
            <asp:Label ID="MessageLabel" runat="server" Text="" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-warning" HeaderText="Please fix these problems before sumitting"/>
            <asp:RequiredFieldValidator ID="RequireFirstNameValidator1" runat="server" ErrorMessage="You must supply your first name" ControlToValidate="FirstName" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You must supply your last name" ControlToValidate="LastName" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="We need an email to tell you if you won" ControlToValidate="Email" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You must tell us your age" ControlToValidate="Age" Display="None"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="You must enter in a code from the box of KD" ControlToValidate="EntryCode" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ErrorMessage="Contest is only open for people between 16 and 65." runat="server" ID="RangeValidator" MinimumValue="16" MaximumValue="65" ControlToValidate="Age" Display="None" Type="Integer"></asp:RangeValidator>
            <asp:RegularExpressionValidator ID="RegExPCValitador"  runat="server" 
                ControlToValidate="PostalCode" 
                ErrorMessage="Postal Code must be in the format of A9A 9A9" 
                ValidationExpression="\D\d\D \d\D\d" 
                Display="None">
            </asp:RegularExpressionValidator>

            <asp:GridView ID="Submissions" runat="server" CssClass="table table-hovered"></asp:GridView>
        </div>
    </div>

    <script src="Scripts/bootwrap-freecode.js"></script>
</asp:Content>
