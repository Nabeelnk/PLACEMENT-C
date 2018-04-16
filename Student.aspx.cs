using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string type = "STUDENT";
        string firstname = Textname.Text;
        string lastname = Textname0.Text;
        string regnumber = Textreg.Text;
        string gender;
        if (RadioButtonList1.Items[0].Selected == true)
        {
            gender = "MALE";

        }
        else
        {
            gender = "FEMALE";
        }

        string address = Textaddress.Text;
        string email = Textemail.Text;
        string department = dept.SelectedItem.Text;
        int percentage = Convert.ToInt16(Textpercentage.Text);

        string userid = Textuserid.Text;
        double mob= Convert.ToDouble (Textmob.Text);
        string password = Textpwd.Text;
        string image = FileUpload1.FileName;
      


        
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StudentRegistration values('" + type + "','" + firstname + "','" + lastname + "','" + regnumber + "','" + gender + "','" + address + "','" + email + "'," + mob + ",'" + dept.SelectedItem.Text + "'," + sem.SelectedItem.Text + "," + percentage + ",'" + sup.SelectedItem.Text + "','" + userid + "','" + password + "','" + image + "','pending')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        

        FileUpload1.SaveAs(Server.MapPath("~\\PICS\\" + image));


    }

    protected void MALE_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Textname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Staff.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
}