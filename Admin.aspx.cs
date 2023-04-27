using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MajdGym;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["where"] = null;
        if (Session["LOG"] == null)
            Response.Redirect("login.aspx");
        DataTable dt = Dbase.SelectFromTable("SELECT * FROM [messages]","db1.accdb");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        newaccount.changeuser("UPDATE users SET type = '"+TextBox2.Text+"' WHERE Email = '"+TextBox1.Text+"'");
        TextBox3.Text = TextBox2.Text = TextBox1.Text = null;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        newaccount.changeuser("DELETE * From users WHERE Email = '"+TextBox3.Text+"'");
        TextBox3.Text = TextBox2.Text = TextBox1.Text = null;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["LOG"] = null;
        Response.Redirect(Request.Url.ToString());
    }
}