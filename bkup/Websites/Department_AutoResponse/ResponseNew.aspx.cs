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
public partial class ResponseNew : System.Web.UI.Page
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
        str = "select * from QueryResponse where UserID='" + Session["ids"].ToString() + "'";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.HasRows)
        {
            GridView1.DataSource = sdr;
            GridView1.DataBind();
        }
        sdr.Close();
        scmd.Dispose();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("HomePage.aspx");
    }
}
