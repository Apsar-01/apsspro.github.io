<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>User Register Page</title>
</head>
<body bgcolor="#ffffcc">
      <form id="form1" runat="server">
    <div>
        
    <table style="position:absolute; top: 114px; left: 269px; z-index: 104;">
    
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Register No"></asp:Label>
    
    </td>
    <td class="style1">
        <asp:TextBox ID="TextBox12" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        &nbsp;
    
        <asp:Label ID="Label17" runat="server" Font-Bold="True" 
            Font-Names="High Tower Text" Font-Size="20px" ForeColor="#003366" style="z-index: 100; left: 646px; position: absolute; top: 2px" Width="193px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="Register No Missing" Style="z-index: 102; left: 373px; position: absolute;
            top: 4px" Width="220px"></asp:RequiredFieldValidator>
    
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label2" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Name"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox1" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label3" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Course"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox2" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" Font-Size="Small"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Course"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Year"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox3" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Enter Year"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label5" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Address"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox4" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label6" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Pincode"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox5" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Enter Pin Code"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Invalid Pin Code" 
            ValidationExpression="^[0-9]{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label7" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Contact No."></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox6" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Enter Contact No."></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Invalid Contact No." 
            ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label8" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="E-Mail ID"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox7" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Enter EMail ID"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Invalid Mail ID" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label9" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="D.O.B."></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox8" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox8" ErrorMessage="Enter DOB"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="height: 24px; width: 204px;">
    
        <asp:Label ID="Label10" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Gender"></asp:Label>
    
    </td>
    <td class="style1" style="height: 24px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="#003366" RepeatDirection="Horizontal">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        </td>
    <td style="height: 24px">
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="RadioButtonList1" ErrorMessage="Select Gender"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label11" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Login ID"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox9" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="TextBox9" ErrorMessage="Enter User Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label12" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Password"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox10" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" 
            BorderWidth="1px" TextMode="Password" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="TextBox10" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style2" style="width: 204px">
    
        <asp:Label ID="Label13" runat="server" Font-Bold="False" 
            Font-Names="Verdana" Font-Size="Small" ForeColor="#9900CC" 
            Text="Confirm Password"></asp:Label>
    
    </td>
    <td class="style1">
    
        <asp:TextBox ID="TextBox11" runat="server" Width="150px" Height="20px" 
            BackColor="#E6FFE6" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" 
            TextMode="Password" Font-Names="Verdana" Font-Size="Small" Font-Bold="False"></asp:TextBox>
    
    </td>
    <td>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox10" ControlToValidate="TextBox11" 
            ErrorMessage="Invalid Password"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
    <td style="width: 204px; height: 32px">
        </td>
    <td align="center" style="height: 32px">
     
        <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Style="z-index: 100;
            left: 224px; position: absolute; top: 416px" Text="Register Now" Width="124px" />
        <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click"
            Style="z-index: 102; left: 30px; position: absolute; top: 416px" Text="Back to Home" />
        </td>
    <td style="height: 32px">
    
       </td>
    </tr>
    </table>
        <img src="images/gaclogo.jpg" style="z-index: 105; left: 0px; width: 217px;
            position: absolute; top: 0px; height: 199px" />
        &nbsp;
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 100; left: 372px; position: absolute; top: 85px"
            Text="New Student Registration Page"></asp:Label>
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 101; left: 370px; position: absolute; top: 57px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 273px; position: absolute; top: 10px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 483px; position: absolute; top: 33px"
            Text="For"></asp:Label>
    </div>
    </form>
</body>
</html>
