using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();

        con.ConnectionString = "Data source= LAPTOP-6\\SQLEXPRESS;Initial Catalog=training;integrated Security=true";
        con.Open();

        SqlCommand cmd = new SqlCommand("select COUNT(*) FROM users WHERE username='" + username.Text + "' and password='" + password.Text + "'");
   
    cmd.Connection = con;

        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());

        if (OBJ > 0)

        {

            Session["name"] = username.Text;

            Response.Redirect("http://www.ramco.com");

        }

        else

        {

            Label1.Text = "Invalid username or password";

            //this.Label1.ForeColor = BaseColor.RED;

        }

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("login.aspx");
    }
}
