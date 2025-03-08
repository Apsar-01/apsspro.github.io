<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResponsePost.aspx.cs" Inherits="ResponsePost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Query Response Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black"
            GridLines="None" Style="z-index: 100; left: 259px; position: absolute; top: 382px"
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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 101;
            left: 490px; position: absolute; top: 339px" Text="Update" Width="80px" />
        &nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton3_Click" Style="z-index: 102; left: 15px;
            position: absolute; top: 162px">Back</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Query_NLPConnectionString2 %>"
            SelectCommand="SELECT [QueryNo], [UserID], [Query],  [QStatus] FROM [QueryResponse] WHERE ([QStatus] = @QStatus)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Posted" Name="QStatus" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 103; left: 310px; position: absolute; top: 6px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 104; left: 527px; position: absolute; top: 43px"
            Text="For"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 117; left: 415px; position: absolute; top: 78px"
            Text="Department of Computer Science"></asp:Label>
        &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 106; left: 371px; position: absolute; top: 123px"
            Text="Response Update for unresolved queries"></asp:Label>
        <asp:Label ID="Label2" runat="server" Style="z-index: 107; left: 344px; position: absolute;
            top: 181px" Text="Query No" Width="118px"></asp:Label>
        <asp:Label ID="Label7" runat="server" Style="z-index: 108; left: 723px; position: absolute;
            top: 182px" Width="349px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Style="z-index: 109; left: 343px; position: absolute;
            top: 214px" Text="Query Posted User ID" Width="151px"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 110; left: 346px; position: absolute;
            top: 248px" Text="Posted Query" Width="151px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Style="z-index: 111; left: 349px; position: absolute;
            top: 290px" Text="Response" Width="151px"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
            Style="z-index: 112; left: 537px; position: absolute; top: 183px" Width="167px">
            <asp:ListItem>-SELECT-</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 113; left: 538px; position: absolute;
            top: 211px" Width="217px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 114; left: 540px; position: absolute;
            top: 242px" TextMode="MultiLine" Width="379px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 115; left: 536px; position: absolute;
            top: 291px" TextMode="MultiLine" Width="379px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Style="z-index: 116; left: 597px; position: absolute;
            top: 341px" Text="Reset" Width="80px" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
