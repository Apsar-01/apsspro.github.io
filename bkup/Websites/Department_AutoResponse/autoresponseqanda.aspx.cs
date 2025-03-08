using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class autoresponseqanda : System.Web.UI.Page
{

    SqlConnection scon;
    SqlCommand scmd;
    SqlDataReader sdr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "data source=AYSUU; initial catalog=Department_NLP; integrated security=true";
        scon = new SqlConnection(str);
        scon.Open();


    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text="";
        TextBox3.Text="";
        Label6.Text = "";

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 1;
        str = "select * from AutoResponseQA order by FAQ_No";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        while (sdr.Read())
        {
            i = 1 + int.Parse (sdr.GetValue(0).ToString());
        }
        sdr.Close();
        scmd.Dispose();
        TextBox1.Text = i.ToString(); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        str = "select * from AutoResponseQA where FAQ_No='" + TextBox1.Text.ToString() + "'" ;
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        { 
            sdr.Close();
            scmd.Dispose();
            Label6.Text = "Query No Already Found";
        }
        else
        {
            sdr.Close ();
            scmd.Dispose();
            str = "insert into AutoResponseQA values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text + "')";
            scmd = new SqlCommand(str, scon);
            scmd.ExecuteNonQuery();
            scmd.Dispose();
            Label6.Text = "Saved";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        str = "select * from AutoResponseQA where FAQ_No='" + TextBox1.Text.ToString() + "'";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
            TextBox2.Text = sdr.GetValue(1).ToString();
            TextBox3.Text = sdr.GetValue(2).ToString();
            sdr.Close();
            scmd.Dispose();
        }
        else
        {
            sdr.Close();
            scmd.Dispose();
            Label6.Text = "Query No Missing";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        str = "select * from AutoResponseQA where FAQ_No='" + TextBox1.Text.ToString() + "'";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
           
            sdr.Close();
            scmd.Dispose();
            str = "delete from AutoResponseQA where FAQ_No='" + TextBox1.Text.ToString() + "'";
            scmd = new SqlCommand(str, scon);
            scmd.ExecuteNonQuery();
            scmd.Dispose();
            Label6.Text = "This Query is deleted";
        }
        else
        {
            sdr.Close();
            scmd.Dispose();
            Label6.Text = "Query No Missing";
        }
    }
}
