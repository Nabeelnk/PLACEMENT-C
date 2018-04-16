using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string venue = TextBox1.Text;
        string date = TextBox2.Text;
        string time = TextBox3.Text;
        string location = TextBox4.Text;
        int numpart = Convert.ToInt16(TextBox5.Text);
        string department = dept.SelectedItem.Text;
        string batch1 = batch.SelectedItem.Text;
        string resourseperson = TextBox6.Text;
        string natureoftraining = nature.SelectedItem.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_training values('" + natureoftraining + "','" + resourseperson + "','" + venue + "','" + date + "','" + time + "','" + location + "'," + numpart + ",'" + department + "','" + batch1 + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        GridView1.DataBind();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("trainingstudentlist.aspx");
    }
}