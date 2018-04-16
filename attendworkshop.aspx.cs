using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class attendworkshop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_viewworkshop values(" + Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text) + "," + Convert.ToInt16(Session["SID"]) + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}