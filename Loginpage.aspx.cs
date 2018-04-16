using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "TPO")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select TpoID,Usertype,UserID,Password from tbl_TPO where UserId='" +TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Session["tpoid"] = dt.Rows[0][0].ToString();
                Session["user_type"] = dt.Rows[0][1].ToString();
                Response.Redirect("index.html");
            }
            else
            {
                Response.Write("<script>alert('Invalid User Type or Password')</script>");
            }
          
        }
        else
            if (DropDownList1.SelectedItem.Text == "STAFF")
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                con1.Open();
                SqlCommand cmd2 = new SqlCommand("select STAFFid,Usertype,Userid,Password from tbl_staff where Userid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and Usertype='" + DropDownList1.SelectedItem.Text + "' and Usertype='" + DropDownList1.SelectedItem.Text + "' and status = 'approved'", con1);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd2);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);

                con1.Close();


                if (dt1.Rows.Count > 0)
                {
                    Session["staffid"] = dt1.Rows[0][0].ToString();
                    Session["user_type"] = dt1.Rows[0][1].ToString();
                    Response.Redirect("staffindex.html");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User Type or Password')</script>");
                }
              
            }
            else
                if (DropDownList1.SelectedItem.Text == "STUDENT")
                {
                    SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
                    con2.Open();
                    SqlCommand cmd3 = new SqlCommand("select SID,Usertype,Userid,Password from StudentRegistration where Userid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and Usertype='" + DropDownList1.SelectedItem.Text + "' and status = 'approved'", con2);
                    SqlDataAdapter sda2 = new SqlDataAdapter(cmd3);
                    DataTable dt2 = new DataTable();
                    sda2.Fill(dt2);
                    con2.Close();


                    if (dt2.Rows.Count > 0)
                    {
                        Session["Sid"] = dt2.Rows[0][0].ToString();
                        Session["user_type"] = dt2.Rows[0][1].ToString();
                        Response.Redirect("studentindex.html");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User Type or Password')</script>");
                    }
                }
        //else
        //{
        //    Response.Write("<script>alert('Invalid username or Password')</script>");
        //}
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.SelectedIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("registrationHome.aspx");
    }
}