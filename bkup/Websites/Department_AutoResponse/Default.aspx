<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page</title>
</head>
<body bgcolor="#cccccc">
   <form id="form1" runat="server">
    <div>
        &nbsp;
      
    <table style="position:absolute; top: 348px; left: 334px; height: 130px; z-index: 105; width: 540px;">
    
    <tr>
    <td style="width: 108px">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Calibri" 
            Font-Size="Large" ForeColor="Black" Text="Login ID" Font-Bold="True"></asp:Label>
    
    </td>
    <td>
    
        <asp:TextBox ID="TextBox1" runat="server" BackColor="AliceBlue" 
            BorderColor="#006600" BorderStyle="Inset" BorderWidth="1px" 
            Font-Names="Calibri" Font-Size="Large" Font-Bold="True" MaxLength="15"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Login ID"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td style="width: 108px">
    
        <asp:Label ID="Label2" runat="server" Font-Names="Calibri" 
            Font-Size="Large" ForeColor="Black" Text="Password" Font-Bold="True"></asp:Label>
    
    </td>
    <td>
    
        <asp:TextBox ID="TextBox2" runat="server" BackColor="AliceBlue" 
            BorderColor="#006600" BorderStyle="Inset" BorderWidth="1px" 
            TextMode="Password" Font-Names="Verdana" Font-Size="Medium" Width="224px" 
            MaxLength="15"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
    
    </td>
    </tr>
    <tr>
    <td align="right" style="height: 31px; width: 108px;">
        &nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
            OnClick="Button2_Click" Style="z-index: 100; left: 52px; position: absolute;
            top: 65px" Text="Login" Width="78px" />
    
    </td>
    <td align="center" style="height: 31px">
        &nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
            Height="36px" OnClick="Button1_Click" Style="z-index: 100; left: 192px; position: absolute;
            top: 63px" Text="Reset" Width="110px" CausesValidation="False" />
    
    </td>
    <td style="height: 31px">
    
    </td>
    </tr>
        <tr>
            <td align="right" style="width: 108px; height: 31px">
            </td>
            <td align="center" style="height: 31px">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Calibri" Font-Size="Large"
                    OnClick="LinkButton1_Click" Style="z-index: 100; left: 152px; position: absolute;
                    top: 96px" Width="184px" CausesValidation="False">New Student Register</asp:LinkButton>
            </td>
            <td style="height: 31px">
            </td>
        </tr>
    </table>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 100; left: 423px; position: absolute; top: 298px"
            Text="Department of Computer Science"></asp:Label>
        &nbsp;
        <asp:Image ID="Image2" runat="server" Height="217px" ImageUrl="~/images/elogo1.png" Style="z-index: 101;
            left: 89px; position: absolute; top: -8px" Width="1055px" />
        &nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" Font-Names="Verdana" ForeColor="Red" Style="z-index: 102;
            left: 368px; position: absolute; top: 502px" Width="409px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 333px; position: absolute; top: 233px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 561px; position: absolute; top: 265px"
            Text="For"></asp:Label>
    </div>
    </form>
</body>
</html>
