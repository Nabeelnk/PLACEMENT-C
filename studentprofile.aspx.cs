using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class studentprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          if (!IsPostBack)
        {
            int id = Convert.ToInt16(Session["Sid"].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from StudentRegistration where SID=" + id, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();

            Label1.Text = dt.Rows[0][2].ToString();
            Label2.Text = dt.Rows[0][3].ToString();
            Label10.Text = dt.Rows[0][4].ToString();
            Label11.Text = dt.Rows[0][5].ToString();
            Label12.Text = dt.Rows[0][6].ToString();
            Label13.Text = dt.Rows[0][7].ToString();
            Label14.Text = dt.Rows[0][8].ToString();
            Label15.Text = dt.Rows[0][9].ToString();
            Label16.Text = dt.Rows[0][10].ToString();
            Label17.Text = dt.Rows[0][11].ToString();
            Label18.Text = dt.Rows[0][12].ToString();

            Image1.ImageUrl = "~/PICS/"+dt.Rows[0][15].ToString();


        }
    }
}