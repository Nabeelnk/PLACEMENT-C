using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SemWise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sem_SelectedIndexChanged(object sender, EventArgs e)
    {

        int s = Convert.ToInt16(sem.SelectedItem.Text);
        Session["sem"] = s;
        GridView1.DataBind();
    }
}