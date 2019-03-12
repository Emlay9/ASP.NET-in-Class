<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApp.Practice.UserRegistration" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h1>User Registration</h1>
    <div class="row">
        <div class="col-md-6">
            <p>Please fill in the form and click submit. After submitting the form you will receive an email with a link to confirm your registration. By clicking on that link, you will complete the registration process.</p>
            <fieldset>
                <asp:Label Text="First Name" runat="server" AssociatedControlID="FirstName"/>
                <asp:TextBox runat="server" ID="FirstName"/>
                <asp:Label Text="Last Name" runat="server" AssociatedControlID="LastName"/>
                <asp:TextBox runat="server" ID="LastName"/>
                <asp:Label Text="User Name" runat="server" AssociatedControlID="UserName"/>
                <asp:TextBox runat="server" ID="UserName"/>
                <asp:Label Text="Email Address" runat="server" AssociatedControlID="Email"/>
                <asp:TextBox runat="server" ID="Email" TextMode="Email"/>
                <asp:Label Text="Confirm Email" runat="server" AssociatedControlID="ConfirmEmail"/>
                <asp:TextBox runat="server" ID="ConfirmEmail" TextMode="Email"/>
                <asp:Label Text="Password" runat="server" AssociatedControlID="Password"/>
                <asp:TextBox runat="server" ID="Password" TextMode="Password"/>
                <asp:Label Text="Confirm Password" runat="server" AssociatedControlID="ConfirmPassword"/>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
                <asp:CheckBox ID="Agree" runat="server" Text="I agree to the terms of this site"/>
            </fieldset>
            <asp:Button ID="SubmitRegistration" runat="server" Text="Submit Registration" CssClass="btn btn-primary" OnClick="SubmitRegistration_Click" />
        </div>
        <div class="col-md-6">
            <asp:ValidationSummary runat="server" HeaderText="Please correct the following before resubmitting the form"/> 
            <asp:RequiredFieldValidator ID="RequireFirstName" runat="server" ErrorMessage="First Name is required" ControlToValidate="FirstName" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastName" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequireUserName" runat="server" ErrorMessage="User Name is required" ControlToValidate="UserName" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorEmail" runat="server" ErrorMessage="Email Address does not match Confirm Email" ControlToValidate="Email" ControlToCompare="ConfirmEmail" Operator="Equal" Display="None"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Email Address does not match Confirm Email" ControlToValidate="Password" ControlToCompare="ConfirmPassword" Operator="Equal" Display="None"></asp:CompareValidator>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>


