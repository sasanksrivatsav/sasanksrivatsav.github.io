using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        //con.ConnectionString = "Data Source= LAPTOP-6\\SQLEXPRESS;Initial Catalog==training;User id=sa;Password=Password1;";


        con.ConnectionString = "Data source= LAPTOP-6\\SQLEXPRESS;Initial Catalog=training;integrated Security=true";
        con.Open();


    }
    protected void submit_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
           submit.Text = "Registered";
        }

        SqlCommand cmd = new SqlCommand("insert into users" + "(firstname,lastname,username,password,dob,Phonenumber) values(@firstname,@lastname,@username,@password,@dob,@phonenumber)", con);
        cmd.Parameters.AddWithValue("@firstname", firstname.Text);
        cmd.Parameters.AddWithValue("@lastname", lastname.Text);
        cmd.Parameters.AddWithValue("@username", email.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.Parameters.AddWithValue("@dob", dob.Text);
        cmd.Parameters.AddWithValue("@phonenumber",phone.Text);
        cmd.ExecuteNonQuery();
        Label1.Text = "Registration Sucessfull!!!";

    }
        
    protected void reset_Click(object sender, EventArgs e)
    {

          
        firstname.Text = string.Empty;
        lastname.Text = string.Empty;
        email.Text = string.Empty;
        password.Text = string.Empty;
        dob.Text = string.Empty;
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("login.aspx");
    }
}
