using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class staffsemwise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sem_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["sem"] = Convert.ToInt16(sem.SelectedItem.Text);
    }
}