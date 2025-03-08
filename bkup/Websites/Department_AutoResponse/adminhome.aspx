<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Admin Page</title>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="193px" ImageUrl="~/images/elogo1.png"
            Style="z-index: 100; left: 116px; position: absolute; top: 16px" Width="976px" />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 101; left: 432px; position: absolute; top: 323px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 306px; position: absolute; top: 234px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 109; left: 532px; position: absolute; top: 278px"
            Text="For"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 104; left: 134px; position: absolute; top: 407px" OnClick="LinkButton1_Click">Students Details</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton2_Click" Style="z-index: 105; left: 301px;
            position: absolute; top: 407px">Academic FAQ Maintenance</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 106; left: 547px; position: absolute; top: 407px" OnClick="LinkButton3_Click">Unsolved Queries</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 107; left: 708px; position: absolute; top: 407px" OnClick="LinkButton4_Click">Admin Response for Unsolved Queries</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" Style="z-index: 108; left: 1016px; position: absolute; top: 408px" OnClick="LinkButton5_Click">Logout</asp:LinkButton>
        &nbsp;
    
    </div>
    </form>
</body>
</html>
