using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = null;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Home.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Cont1.send_msg(TextBox1.Text, TextBox2.Text, TextBox3.Text);
        TextBox1.Text = TextBox2.Text = TextBox3.Text = null;
        Label1.Text = "Succssesfully sent...";
    }

}