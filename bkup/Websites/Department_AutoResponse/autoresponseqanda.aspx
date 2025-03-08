<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autoresponseqanda.aspx.cs" Inherits="autoresponseqanda" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Auto response for Q and A Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" Height="162px" ImageUrl="~/images/faq.png" Style="z-index: 100;
            left: 41px; position: absolute; top: -8px" Width="1106px" />
        &nbsp;
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
            Font-Size="Large" Style="z-index: 105; left: 323px; position: absolute; top: 168px"
            Text="Automatic Query Response System for Academic Institution using NLP"></asp:Label>
        &nbsp; &nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="191px" Style="z-index: 102;
            left: 289px; position: absolute; top: 207px" Width="614px" BorderColor="#FFC0C0" BorderWidth="1px">
            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 100;
                left: 23px; position: absolute; top: 11px" Text="Question No."></asp:Label>
            <asp:Label ID="Label6" runat="server" Style="z-index: 112; left: 629px; position: absolute;
                top: 4px" Width="206px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Font-Size="Small"
                Style="z-index: 102; left: 149px; position: absolute; top: 11px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 103;
                left: 23px; position: absolute; top: 40px" Text="Question"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 104;
                left: 26px; position: absolute; top: 76px" Text="Answer"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Font-Size="Small"
                Style="z-index: 105; left: 150px; position: absolute; top: 43px" Width="441px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Verdana" Font-Size="Small"
                Height="60px" Style="z-index: 106; left: 153px; position: absolute; top: 76px"
                TextMode="MultiLine" Width="437px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 107;
                left: 14px; position: absolute; top: 154px" Text="New Question" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 108;
                left: 151px; position: absolute; top: 155px" Text="Save" Width="86px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 109;
                left: 252px; position: absolute; top: 156px" Text="View" Width="95px" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Font-Names="Verdana" Font-Size="Small" Style="z-index: 110;
                left: 364px; position: absolute; top: 157px" Text="Delete" Width="86px" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Font-Names="Verdana" Font-Size="Small" OnClick="Button5_Click"
                Style="z-index: 111; left: 455px; position: absolute; top: 159px" Text="Clear"
                Width="93px" />
        </asp:Panel>
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Verdana"
            Font-Size="Small" OnClick="LinkButton2_Click" Style="z-index: 103; left: 1041px;
            position: absolute; top: 174px">Back</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="4"
            DataSourceID="SqlDataSource1" Style="z-index: 104;
            left: 222px; position: absolute; top: 411px" Width="764px" AllowSorting="True" BorderStyle="None">
            <Columns>
                <asp:BoundField DataField="FAQ_No" HeaderText="Question No" SortExpression="FAQ_No" />
                <asp:BoundField DataField="Question" HeaderText="Academic Questions" SortExpression="Question" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Query_NLPConnectionString %>"
            SelectCommand="SELECT [FAQ_No], [Question], [Answer] FROM [AutoResponseQA]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
