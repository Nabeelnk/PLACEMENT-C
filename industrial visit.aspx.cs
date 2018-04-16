using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class industrial_visit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double numpartcipants = Convert.ToDouble(TextBox1.Text);
        string date = TextBox2.Text;
        string time = TextBox3.Text;
        string location = TextBox4.Text;
        string department = dept.SelectedItem.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_IV values(" + numpartcipants + ",'" + date + "','" + time + "','" + location + "','" + department + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        GridView1.DataBind();
    }
    protected void dept_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}