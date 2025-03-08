<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autoresponse.aspx.cs" Inherits="autoresponse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Auto Response Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="231px" ImageUrl="~/images/nlp2.png"
            Style="z-index: 100; left: 93px; position: absolute; top: -10px" Width="1019px" />
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFC0" Height="154px" Style="z-index: 101;
            left: 311px; position: absolute; top: 282px" Width="614px">
            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 100;
                left: 23px; position: absolute; top: 11px" Text="Enter Your Query"></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 101; left: 624px; position: absolute;
                top: 11px" Width="206px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Font-Size="Small"
                Height="84px" Style="z-index: 102; left: 149px; position: absolute; top: 11px"
                TextMode="MultiLine" Width="417px"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="Small" OnClick="Button1_Click"
                Style="z-index: 103; left: 51px; position: absolute; top: 113px" Text="Extract Features  and Response" />
            <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 170px; position: absolute;
                top: 163px" Width="597px"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Font-Names="Verdana" OnClick="Button3_Click"
                Style="z-index: 107; left: 201px; position: absolute; top: 209px" Text="Get Response" />
            <asp:Button ID="Button2" runat="server" Font-Names="Verdana" Font-Size="Small" OnClick="Button2_Click"
                Style="z-index: 106; left: 393px; position: absolute; top: 114px" Text="Reset"
                Width="86px" />
            &nbsp; &nbsp;
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 102;
            left: 261px; position: absolute; top: 446px" Text="Query after stopwords removal"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 440px; position: absolute; top: 248px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 105; left: 331px; position: absolute; top: 211px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
    
    </div>
    </form>
</body>
</html>
