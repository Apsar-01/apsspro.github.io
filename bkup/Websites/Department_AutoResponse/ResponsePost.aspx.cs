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
public partial class ResponsePost : System.Web.UI.Page
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
        if (Page.IsPostBack == false)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("-SELECT-");
            str = "select * from QueryResponse where QStatus='Posted'";
            scmd = new SqlCommand(str, scon);
            sdr = scmd.ExecuteReader();
            while (sdr.Read())
            {
                DropDownList1.Items.Add(sdr.GetValue(0).ToString());
            }
            sdr.Close();
            scmd.Dispose();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        str = "select * from QueryResponse where QueryNo='" + DropDownList1.SelectedItem.Text.ToString() + "'";

        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
            TextBox1.Text = sdr.GetValue(1).ToString();
            TextBox2.Text = sdr.GetValue(2).ToString();
            sdr.Close();
            scmd.Dispose();
        }
        else
        {
            sdr.Close();
            scmd.Dispose();
            Label7.Text = "Query No Missing";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "select * from QueryResponse where QueryNo='" + DropDownList1.SelectedItem.Text.ToString() + "'";

        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        if (sdr.Read())
        {
           
            sdr.Close();
            scmd.Dispose();
            str = "update QueryResponse set Response='" + TextBox3.Text.ToString() + "', Qstatus='Solved'    where QueryNo='" + DropDownList1.SelectedItem.Text.ToString() + "'";

            scmd = new SqlCommand(str, scon);
            scmd.ExecuteNonQuery();
            scmd.Dispose();
            Label7.Text = "Query Response Updated";
            DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text   );
            int i = 1;
            str = "select * from AutoResponseQA";
            scmd = new SqlCommand(str, scon);
            sdr = scmd.ExecuteReader();
            while (sdr.Read())
            {
                i = i + int.Parse(sdr.GetValue(0).ToString());
            }
            sdr.Close();
            scmd.Dispose();
            str = "select * from AutoResponseQA where FAQ_No='" + i.ToString() + "'";
            scmd = new SqlCommand(str, scon);
            sdr = scmd.ExecuteReader();
            if (sdr.Read())
            {
                sdr.Close();
                scmd.Dispose();
                Label7.Text = "Query No Already Found";
            }
            else
            {
                sdr.Close();
                scmd.Dispose();
                str = "insert into AutoResponseQA values('" + i.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text + "')";
                scmd = new SqlCommand(str, scon);
                scmd.ExecuteNonQuery();
                scmd.Dispose();
                Label7.Text = "Saved";
            }
        
        }
        else
        {
            sdr.Close();
            scmd.Dispose();
            Label7.Text = "Query No Missing";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label7.Text = "";


  
    }
}
