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
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using SpeechLib;
using System.Text;
public partial class autoresponse : System.Web.UI.Page
{
    string query,temp,response;
    string[] stopwords = {"can", "could","should", "shall", "for","it","we", "this", "to","that","and","are","your","you","what","how","when","is","where","was","the","into","should","could","would","be","will", "or"};
    string[] swords;
    string[] qwords;
    char[] delimiterChars = { ' ', ',', '.', ':', '\t' };

    SqlConnection scon,scon1;
    SqlCommand scmd,scmd1;
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
      int si,qi,count=0;
        query=TextBox1.Text.ToString();
        temp = query;
        Session["query"] = query;
        scon1 = new SqlConnection(str);
        scon1.Open();

        str = "delete from temp";
        scmd = new SqlCommand(str, scon);
        scmd.ExecuteNonQuery();
        scmd.Dispose();

    /*   foreach (string word in stopwords )
        {
            temp = temp.Replace(word, "");

        }
          TextBox2.Text = temp;
      */
        foreach (string word in stopwords)
        {
            string regexp = @"(?i)\s?\b" + word + @"\b\s?";
            temp= Regex.Replace(temp, regexp, " ");
        }

        TextBox2.Text = temp;
        
        swords = temp.Split(delimiterChars);
       
        str = "select * from AutoResponseQA";
        scmd = new SqlCommand(str, scon);
        sdr = scmd.ExecuteReader();
        while (sdr.Read())
        {
            query = sdr.GetValue(1).ToString();
            qwords = query.Split(delimiterChars);
            for (si = 0; si < swords.Length; si++)
            {
                for (qi = 0; qi < qwords.Length; qi++)
                    if (qwords[qi].ToLower().Equals(swords[si].ToLower()))
                        count++;
            }
            if (count > 1)
            {
                response = sdr.GetValue(2).ToString();
                str = "insert into temp values('" + query + "','" + response + "'," + count +")";
                scmd1 = new SqlCommand(str, scon1);
                scmd1.ExecuteNonQuery();
                scmd1.Dispose();

            }
            

            count = 0;
        }
        sdr.Close();
        scmd.Dispose();

}
    
    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Response.aspx");
    }
}
