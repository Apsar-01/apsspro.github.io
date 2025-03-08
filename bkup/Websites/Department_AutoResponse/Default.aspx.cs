using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
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
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label4.Text = "";
 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text.ToString() == "admin") && (TextBox2.Text.ToString() == "admin"))
            Response.Redirect("adminhome.aspx");

        SqlDataAdapter sda = new SqlDataAdapter("select * from UserProfile where LoginID='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", scon);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["ids"] = ds.Tables[0].Rows[0]["LoginID"].ToString();
            Session["nam"] = ds.Tables[0].Rows[0]["UserName"].ToString();
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            Label4.Text = "Login Failed";
        }
    }
}
