<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Response.aspx.cs" Inherits="Response" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Auto Response Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" Font-Names="Verdana"
            Font-Size="Small" ForeColor="Black" GridLines="None" Style="z-index: 100; left: 141px;
            position: absolute; top: 165px" Width="1055px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                <asp:BoundField DataField="Response" HeaderText="Response" SortExpression="Response" />
                <asp:BoundField DataField="TFCount" HeaderText="Features Count" SortExpression="TFCount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Query_NLPConnectionString2 %>"
            SelectCommand="SELECT [Query], [Response], [TFCount] FROM [temp] ORDER BY [TFCount] DESC"></asp:SqlDataSource>
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFE0C0" Font-Names="Verdana" Font-Size="Small"
            Height="70px" Style="z-index: 101; left: 329px; position: absolute; top: 452px"
            Width="521px">
            <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 33px; position: absolute;
                top: 15px" Text="Are You Satisfied with Response"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 103;
                left: 234px; position: absolute; top: 42px" Text="Submit" />
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana" Font-Size="Small"
                Style="z-index: 102; left: 274px; position: absolute; top: 13px" Width="159px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>-SELECT-</asp:ListItem>
                <asp:ListItem>Satisfied</asp:ListItem>
                <asp:ListItem>Not Satisfied</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 451px; position: absolute; top: 75px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 460px; position: absolute; top: 124px"
            Text="Automatic Response for Students" ForeColor="Red"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 104; left: 311px; position: absolute; top: 20px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 105; left: 572px; position: absolute; top: 48px"
            Text="For"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton1_Click" Style="z-index: 107; left: 24px;
            position: absolute; top: 118px">Back to Home</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
