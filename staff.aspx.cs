using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class staff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string type = "STAFF";
        string firstname = TextBox1.Text;
        string lastname = TextBox2.Text;
        int age = Convert.ToInt16(TextBox3.Text);
        string dept = department.SelectedItem.Text;
        string subject = TextBox4.Text;
        string emailid = TextBox5.Text;
        double mobilenum = Convert.ToDouble(TextBox6.Text);
        string image = FileUpload1.FileName;
        string userid = TextBox7.Text;
        string pwd = TextBox8.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_staff values('" + type + "','" + firstname + "','" + lastname + "'," + age + ",'" + dept + "','" + subject + "','" + emailid + "','" + mobilenum + "','" + image + "','" + userid + "','" + pwd + "','pending')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Inserted succesfully')</script>");  

        

        FileUpload1.SaveAs(Server.MapPath("~\\PICS\\" + image ));

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void dept_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
}