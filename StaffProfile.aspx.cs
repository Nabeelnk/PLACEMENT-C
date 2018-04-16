using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StaffProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt16(Session["staffid"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from tbl_staff where STAFFid=" + id, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            Label1.Text = dt.Rows[0][2].ToString();
            Label2.Text = dt.Rows[0][3].ToString();
            Label3.Text = dt.Rows[0][4].ToString();
            Label4.Text = dt.Rows[0][5].ToString();
            Label5.Text = dt.Rows[0][6].ToString();
            Label6.Text = dt.Rows[0][7].ToString();
            Label7.Text = dt.Rows[0][8].ToString();



            Image1.ImageUrl = "~/PICS/" + dt.Rows[0][9].ToString();
        }
    }
}