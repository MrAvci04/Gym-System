using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Label1.Text = null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = newaccount.SelectFromUser("SELECT '(Email,Pass,type)' FROM [users] WHERE [Email] = '"+TextBox1.Text.Trim()+"'  AND [Pass] = '"+TextBox2.Text.Trim()+"'");
        if (dt.Rows.Count >= 1)
        {
            Session["LOG"] = TextBox1.Text;
            if (Session["where"] != null)
            {  
                string ses = Session["where"].ToString();
                Response.Redirect(ses);
            }
             else
                {
                if (TextBox2.Text.ToString() == "159753258456")
                    Response.Redirect("Admin.aspx");
                }
        }
        else if (dt.Rows.Count < 1)
            Label1.Text = "Invalid E-mail Or Password";
    }
}