using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LOG"] == null)
        {
            Session["where"] = "User.aspx";
            Response.Redirect("login.aspx");
        }
        Session["where"] = null;
        Response.Write("welcome to session");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["LOG"] = null;
    }
}