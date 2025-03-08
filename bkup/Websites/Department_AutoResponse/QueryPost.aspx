<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryPost.aspx.cs" Inherits="QueryPost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Query Post Page</title>
</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="233px" ImageUrl="~/query-1.jpg" Style="z-index: 100;
            left: 64px; position: absolute; top: 7px" Width="1076px" />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 101; left: 415px; position: absolute; top: 330px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 257px; position: absolute; top: 258px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 529px; position: absolute; top: 292px"
            Text="For"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" ForeColor="#00C000" Style="z-index: 104; left: 427px; position: absolute;
            top: 416px" Text="Your Query successfully posted."></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton1_Click" Style="z-index: 105; left: 508px;
            position: absolute; top: 474px">Back to Home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
