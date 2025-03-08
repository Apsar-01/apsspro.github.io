<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postedqueries.aspx.cs" Inherits="postedqueries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Unresponsive Queries Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black"
            GridLines="None" Style="z-index: 100; left: 75px; position: absolute; top: 202px"
            Width="789px">
            <Columns>
                <asp:BoundField DataField="QueryNo" HeaderText="QueryNo" SortExpression="QueryNo" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                <asp:BoundField DataField="Query" HeaderText="Unresponsive Query" SortExpression="Query" />
               
                <asp:BoundField DataField="QStatus" HeaderText="QStatus" SortExpression="QStatus" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton3_Click" Style="z-index: 101; left: 15px;
            position: absolute; top: 162px">Back</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Query_NLPConnectionString2 %>"
            SelectCommand="SELECT [QueryNo], [UserID], [Query],  [QStatus] FROM [QueryResponse] WHERE ([QStatus] = @QStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Posted" Name="QStatus" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 102; left: 310px; position: absolute; top: 92px"
            Text="Department of Computer Science"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 228px; position: absolute; top: 25px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 427px; position: absolute; top: 58px"
            Text="For"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 105; left: 331px; position: absolute; top: 141px"
            Text="Queries yet resolved"></asp:Label>
    
    </div>
    </form>
</body>
</html>
