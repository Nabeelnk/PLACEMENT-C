using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string cname = TextBox1.Text;
        string designation = desi.SelectedItem.Text;
        double salary = Convert.ToDouble(TextBox2.Text);
        string date = TextBox3.Text;
        string venue = TextBox4.Text;
        string time = TextBox5.Text;
        string jobdes = TextBox6.Text;
        string qualification = quali.SelectedItem.Text;
        int cutoff = Convert.ToInt16(TextBox7.Text);
        int vacancy = Convert.ToInt16(TextBox8.Text);
        string web = TextBox9.Text;
        double contact = Convert.ToDouble(TextBox10.Text);

       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_company values('" + cname + "','" + designation + "','" + salary + "','" + date + "','" + venue + "','" + time + "','" + jobdes + "','" + qualification + "'," + cutoff + "," + vacancy + ",'" + web + "','" + contact + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}