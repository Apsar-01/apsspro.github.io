<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResponseNew.aspx.cs" Inherits="ResponseNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Response for Posted Queries Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Style="z-index: 100;
            left: 99px; position: absolute; top: 298px" Width="1040px" Height="189px">
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:Image ID="Image1" runat="server" Height="207px" ImageUrl="~/images/elogo1.png" Style="z-index: 101;
            left: 0px; position: absolute; top: 5px" Width="1215px" />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton1_Click" Style="z-index: 102; left: 1076px;
            position: absolute; top: 224px">Back to Home</asp:LinkButton>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 517px; position: absolute; top: 272px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 104; left: 354px; position: absolute; top: 211px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 611px; position: absolute; top: 242px"
            Text="For"></asp:Label>
    
    </div>
    </form>
</body>
</html>
