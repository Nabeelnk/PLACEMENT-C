using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class tpoviewdrive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("company.aspx");

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int n;
        n=Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Session["id"] = n;

        Response.Redirect("drivestudentlist1.aspx");
       
    }
}