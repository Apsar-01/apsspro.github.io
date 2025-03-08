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

public partial class Response : System.Web.UI.Page
{
    string question, answer;
    SqlConnection scon;
    SqlCommand scmd, scmd1;
    SqlDataReader sdr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "data source=AYSUU; initial catalog=Department_NLP; integrated security=true";
        scon = new SqlConnection(str);
        scon.Open();
        str = "SELECT [Query], [Response], [TFCount] FROM [temp] ORDER BY [TFCount] DESC";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
            question = sdr.GetValue(0).ToString();
            answer = sdr.GetValue(1).ToString();
            sdr.Close();
            scmd.Dispose();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text.Equals("Not Satisfied"))
        {
            Response.Redirect("QueryPost.aspx");
        }
        else
        {
              
            Response.Redirect("AutoResponse.aspx");  
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text.Equals("Satisfied"))
        {
            
            string msg = "<script language=\"javascript\">";
            msg += "alert('" + Session["query"] + " => " + answer + "');";
            msg += "</script>";
            Response.Write(msg);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
