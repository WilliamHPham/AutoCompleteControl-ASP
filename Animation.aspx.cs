using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Animation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void Time()
    {
        Label3.Text = DateTime.Now.ToString("dddd, MMMM dd yyyy"); ;
    }

    protected void btnPlay_Click(object sender, EventArgs e)
    {
        Time();
    }
}