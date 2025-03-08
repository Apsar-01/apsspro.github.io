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
using System.Data.SqlClient ;
public partial class Register : System.Web.UI.Page
{
    SqlConnection scon;
    SqlCommand scmd;
    SqlDataReader sdr;
    string str;

    protected void Page_Load(object sender, EventArgs e)
    {
         str = "data source=AYSUU; initial catalog=Department_NLP; integrated security=true";
        scon = new SqlConnection (str);
        scon.Open();


       
   
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select * from userprofile where loginid='" + TextBox9.Text.ToString() + "'";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
            sdr.Close();
            scmd.Dispose();
            Label17.Text = "Login ID Existing";
        }
        else
        {
            sdr.Close();
            scmd.Dispose();
            str = "insert into userprofile values('" + TextBox12.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            scmd = new SqlCommand(str, scon);
            scmd.ExecuteNonQuery();
            scmd.Dispose();
            Response.Redirect("RegResp.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
