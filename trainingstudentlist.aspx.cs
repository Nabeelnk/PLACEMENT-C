using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class trainingstudentlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int t;
        t = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Session["tid"] = t;

        Response.Redirect("trainingstudentlist1.aspx");
    }
}