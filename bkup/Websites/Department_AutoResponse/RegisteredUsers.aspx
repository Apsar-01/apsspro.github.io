<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisteredUsers.aspx.cs" Inherits="RegisteredUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Registered Users Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2"
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Style="z-index: 100;
            left: 32px; position: absolute; top: 330px" Width="1096px">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="Register No" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="Student Name" SortExpression="UserName" />
                <asp:BoundField DataField="Street" HeaderText="Course" SortExpression="Street" />
                <asp:BoundField DataField="Area" HeaderText="Year" SortExpression="Area" />
                <asp:BoundField DataField="City" HeaderText="Contact Address" SortExpression="City" />
                <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
                <asp:BoundField DataField="EMailID" HeaderText="EMail ID" SortExpression="EMailID" />
                <asp:BoundField DataField="BirthDate" HeaderText="Birth Date" SortExpression="BirthDate" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="LoginID" HeaderText="LoginID" SortExpression="LoginID" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 101; left: 485px; position: absolute; top: 296px"
            Text="Registered User Profile"></asp:Label>
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton5_Click" Style="z-index: 102; left: 33px;
            position: absolute; top: 265px">Back</asp:LinkButton>
        <asp:Image ID="Image1" runat="server" Height="222px" ImageUrl="~/images/student-banner.jpg"
            Style="z-index: 103; left: 0px; position: absolute; top: 0px" Width="1178px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Query_NLPConnectionString %>"
            SelectCommand="SELECT [UserID], [UserName], [Street], [Area], [City], [ContactNo], [EMailID], [BirthDate], [Gender], [LoginID] FROM [UserProfile]">
        </asp:SqlDataSource>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 104; left: 459px; position: absolute; top: 252px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 105; left: 342px; position: absolute; top: 223px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 107; left: 410px; position: absolute; top: 254px"
            Text="For"></asp:Label>
    
    </div>
    </form>
</body>
</html>
