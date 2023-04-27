using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            drop.Items.Add("Select Secret Question");
            drop.Items.Add("What is your mother's maiden name ? ");
            drop.Items.Add("What was the model of your first car ? ");
            drop.Items.Add("In what city were you born ? ");
            drop.Items.Add("What was your father's middle name ? ");
            Label1.Text = null;
            Label2.Text = null;
        }
    }

    protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = newaccount.SelectFromUser("SELECT '(Pass)' FROM users WHERE (Email = '"+TextBox2.Text+"')");
        if (dt.Rows.Count <= 0)
        {
            if (TextBox5.Text == TextBox3.Text)
            {
                newaccount.create_account(TextBox1.Text, TextBox2.Text, TextBox3.Text, drop.SelectedItem.Text, TextBox4.Text);
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = null;
                Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "Invalid rePassword , Please Try Again";
            }
        }
        else
        {
            Label2.Text = "Invalid E-mail , Please Try Again";
        }
    }
}