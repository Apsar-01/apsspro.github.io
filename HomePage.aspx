<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="228px" ImageUrl="~/images/student-banner.jpg"
            Style="z-index: 100; left: 6px; position: absolute; top: -4px" Width="1223px" />
        &nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 101; left: 481px; position: absolute; top: 311px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 353px; position: absolute; top: 237px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 603px; position: absolute; top: 278px"
            Text="For"></asp:Label>
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton1_Click" Style="z-index: 104; left: 540px;
            position: absolute; top: 370px">Auto Response for Queries</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton2_Click" Style="z-index: 105; left: 539px;
            position: absolute; top: 418px">Response for Posted Queries</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton3_Click" Style="z-index: 106; left: 605px;
            position: absolute; top: 471px">Logout</asp:LinkButton>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Albany" Height="29px"
            Style="z-index: 107; left: 64px; position: absolute; top: 328px" Text="Label"
            Width="226px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Albany" Height="29px"
            Style="z-index: 109; left: 62px; position: absolute; top: 375px" Text="Label"
            Width="226px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
