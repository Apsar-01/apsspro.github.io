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

public partial class QueryPost : System.Web.UI.Page
{
    SqlConnection scon;
    SqlCommand scmd;
    SqlDataReader sdr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 1;
        str = "data source=AYSUU; initial catalog=Department_NLP; integrated security=true";
        scon = new SqlConnection(str);
        scon.Open();
        if (Page.IsPostBack == false)
        {
            str = "select * from QueryResponse";
            scmd = new SqlCommand(str, scon);
            sdr = scmd.ExecuteReader();
            while (sdr.Read())
            {
                i++;
            }
            sdr.Close();
            scmd.Dispose();
            // Session["ids"] = ds.Tables[0].Rows[0]["LoginID"].ToString();
            // Session["query"] = query;
            // QueryNo, UserID, Query, Response, QStatus -> QueryResponse
            str = "insert into queryresponse values('" + i.ToString() + "','" + Session["ids"].ToString() + "','" + Session["query"].ToString() + "',' ','Posted')";
            scmd = new SqlCommand(str, scon);
            scmd.ExecuteNonQuery();
            scmd.Dispose();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
