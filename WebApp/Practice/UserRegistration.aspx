<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApp.Practice.UserRegistration" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h1>User Registration</h1>
    <div class="row">
        <div class="col-md-6">
            <p>Please fill in the form and click submit. After submitting the form you will receive an email with a link to confirm your registration. By clicking on that link, you will complete the registration process.</p>
            <fieldset>
                <asp:Label Text="First Name" runat="server" AssociatedControlID="FirstName"/>
                <asp:TextBox runat="server" ID="FirstName"/>
                <br />
                <asp:Label Text="Last Name" runat="server" AssociatedControlID="LastName"/>
                <asp:TextBox runat="server" ID="LastName"/>
                <br />
                <asp:Label Text="User Name" runat="server" AssociatedControlID="UserName"/>
                <asp:TextBox runat="server" ID="UserName"/>
                <br />
                <asp:Label Text="Email Address" runat="server" AssociatedControlID="Email"/>
                <asp:TextBox runat="server" ID="Email" TextMode="Email"/>
                <br />
                <asp:Label Text="Confirm Email" runat="server" AssociatedControlID="ConfirmEmail"/>
                <asp:TextBox runat="server" ID="ConfirmEmail" TextMode="Email"/>
                <br />
                <asp:Label Text="Password" runat="server" AssociatedControlID="Password"/>
                <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
                <br />
                <asp:Label Text="Confirm Password" runat="server" AssociatedControlID="ConfirmPassword"/>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
                <br />
                <asp:CheckBox ID="Agree" runat="server" Text="I agree to the terms of this site"/>
            </fieldset>
            <asp:Button ID="SubmitRegistration" runat="server" Text="Submit Registration" CssClass="btn btn-primary" OnClick="SubmitRegistration_Click" />
        </div>
        <div class="col-md-6">
            <asp:ValidationSummary runat="server" HeaderText="Please correct the following before resubmitting the form" /> 
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>


