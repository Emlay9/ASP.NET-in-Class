﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KDContest.aspx.cs" Inherits="KDContest.KDContest" %>
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
                <asp:TextBox ID="Email" runat="server" />

                <asp:Label ID="Label4" runat="server" AssociatedControlID="City">City</asp:Label>
                <asp:TextBox ID="City" runat="server" />

                 <asp:Label ID="Label7" runat="server" AssociatedControlID="Province">Province</asp:Label>
                <asp:DropDownList ID="Province" runat="server">
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>BC</asp:ListItem>
                    <asp:ListItem>SK</asp:ListItem>
                </asp:DropDownList>

                <asp:Label ID="Label5" runat="server" AssociatedControlID="PostalCode">Postal Code</asp:Label>
                <asp:TextBox ID="PostalCode" runat="server" />

                <asp:Label ID="Label6" runat="server" AssociatedControlID="Age">Age</asp:Label>
                <asp:TextBox ID="Age" runat="server" />

            </fieldset>
            <br />
            <asp:LinkButton ID="Submit" runat="server" OnClick="Submit_Click">Submit</asp:LinkButton>
            <asp:LinkButton ID="ClearForm" runat="server" OnClick="ClearForm_Click">Clear Form</asp:LinkButton>
            <br />
            <p>Note: You must agree to the contest terms in order to be entered.</p>
        </div>
    </div>

    <script src="Scripts/bootwrap-freecode.js"></script>
</asp:Content>
