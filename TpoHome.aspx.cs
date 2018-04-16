using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TpoHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewStudent.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("industrial visit.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tpoviewdrive.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("training.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("workshop.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("seminar.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("StaffDetails.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApproveStaff.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("TpoProfile.aspx");
    }
}