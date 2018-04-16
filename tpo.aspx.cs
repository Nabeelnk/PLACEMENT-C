using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class tpo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string type = "TPO";
        string fname = TextBox1.Text;
        string lname = TextBox2.Text;
        int age = Convert.ToInt16(TextBox3.Text);
        string email = TextBox4.Text;
        double mob = Convert.ToDouble(TextBox5.Text);
        string userid = TextBox6.Text;
        string pwd = TextBox7.Text;
        string image = FileUpload1.FileName;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_TPO values('" + type + "','" + fname + "','" + lname + "'," + age + ",'" + email + "','" + mob + "','" + userid + "','" + pwd + "','" + image + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        FileUpload1.SaveAs(Server.MapPath("~\\PICS\\ + image "));

        GridView1.DataBind();
    }
}