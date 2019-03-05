<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information. Enter your name and click the button</p>

    <%-- The ID attribute will generate a field name in the code-behind class that allows me to programatically interact with the asp.net server control --%>
    <asp:Label ID="MessageLabel" runat="server" />
    <br />

    <%--The AssociatedControlID attribute/property must have a value that is the ID of another control--%>
    <asp:Label ID="Label1" runat="server" AssociatedControlID="FullName">Your Full Name:</asp:Label>
    <asp:TextBox ID="FullName" runat="server" />
    <%-- A LinkButton will look like a link, render as an <a>, but work like a button --%>
    <asp:LinkButton ID="GetInitials" runat="server" CssClass="btn btn-primary" Text="Get Your Initials" onClick="GetInitials_Click"/>
    <asp:Label ID="Initials" runat="server" />
    <asp:LinkButton ID="ReverseName" runat="server" CssClass="btn btn-default" Text="Spell it backwards" Visible="false" OnClick="ReverseName_Click" />

    <hr />

    <h3>Various TextBox Modes</h3>
    <%-- Shows up as input type="password" --%>
    <asp:TextBox ID="YourPassWord" runat="server" TextMode="Password" />
    <br />
    <%-- Shows up as input type="date" --%>
    <asp:TextBox ID="DateOfBirth" runat="server" TextMode="Date" />
    <br />
    <%-- Shows up as input type="color", where you pick the color from a popup color picker--%>
    <asp:TextBox ID="SkyColor" runat="server" TextMode="Color" />
    <br />
    <%-- Shows up as input type="email", and if you don't put an @ it gives you a popup message requesting it in the email --%>
    <asp:TextBox ID="SchoolEmail" runat="server" TextMode="Email"/>
    <br />
    <%-- Shows up as <textarea> which can be expanded height wise --%>
    <asp:TextBox ID="Bio" runat="server" TextMode="MultiLine" />
    <br />

    <h3>Other User Input Controls</h3>
    <%-- Shows up as input type="file" --%>
    <asp:FileUpload ID="Avatar" runat="server" />
    <br />
    <%-- Shows up as input type="checkbox" --%>
    <asp:CheckBox ID="AgreeToTerms" runat="server" Text="Agree To Terms" />
    <br />
    <%-- Shows up as select with options --%>
    <asp:DropDownList ID="CareerPath" runat="server">
        <asp:ListItem Value="">[Select a Career Path]</asp:ListItem>
        <asp:ListItem  Value="Best">Computer Software Development</asp:ListItem>
        <asp:ListItem  Value="Acceptable">Business Analysis</asp:ListItem>
        <asp:ListItem  Value="AlsoAcceptable">Systems Development</asp:ListItem>
        <asp:ListItem  Value="TemporaryEmployement">Game Development</asp:ListItem>
    </asp:DropDownList>
    <br />
      <%-- Shows up as a <table> which has inside <tr><td> is input type="checkbox" and labels--%>
    <asp:CheckBoxList ID="Languages" runat="server">
        <asp:ListItem Value="CSharp">C#</asp:ListItem>
        <asp:ListItem Value="Java">Java</asp:ListItem>
        <asp:ListItem Value="VB">Visual Basic</asp:ListItem>
        <asp:ListItem Value="HTML">HTML</asp:ListItem>
        <asp:ListItem Value="CSS">CSS</asp:ListItem>
        <asp:ListItem Value="JS">JavaScript</asp:ListItem>
        <asp:ListItem Value="SQL">SQL</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    <%-- Shows up as a table which has inside input type="radio" and labels--%>
    <asp:RadioButtonList ID="Gender" runat="server">
        <asp:ListItem Value="M">Male</asp:ListItem>
        <asp:ListItem Value="F">Female</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <%-- Shows up as <img> --%>
    <asp:Image ID="Eclipse" runat="server" ImageUrl="https://3c1703fe8d.site.internapcdn.net/newman/csz/news/800/2017/imageapartia.png"/>
    <br />
      <%-- Shows up as an <input type="submit"> --%>
    <asp:Button ID="AddStuff" runat="server" Text="Add Stuff" />
    <%-- VS. --%>
    <%-- Shows up as a <a>--%>
    <asp:LinkButton ID="AddMore" runat="server">Add More Stuff</asp:LinkButton>
    <%-- VS. --%>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    <%-- VS. --%>
    <%-- Shows up as an <input type="button"> --%>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Content/button.png" />
    <br />
    <%-- Shows up as a little calendate made with a <table> and a lot of <tr> and <td> the numbers are clickable and show up as <a>
        where the hre is "javascript:doPostBack...." --%>
    <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
    <hr />
    <asp:LinkButton ID="Interact" runat="server" CssClass="btn btn-primary" OnClick="Interact_Click">Programmatically Interact With Controls</asp:LinkButton>
    <asp:Label ID="Results" runat="server"/>
</asp:Content>
