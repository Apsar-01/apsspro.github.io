<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegResp.aspx.cs" Inherits="RegResp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Register Response Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/thanks.jpg" Style="z-index: 100;
            left: 381px; position: absolute; top: 254px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" ImageUrl="~/banner/back.jpg"
            OnClick="ImageButton1_Click" Style="z-index: 101; left: 563px; position: absolute;
            top: 389px" Width="100px" />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 324px; position: absolute; top: 174px"
            Text="Natural Language processing based Automatic Responsive and Answering System"></asp:Label>
    
    </div>
    </form>
</body>
</html>
