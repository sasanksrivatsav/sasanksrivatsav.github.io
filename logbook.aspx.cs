using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class logbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
             protected void create_Click(object sender, EventArgs e)

    {
        
    
        SqlConnection con = new SqlConnection();

        con.ConnectionString = "Data source= LAPTOP-6\\SQLEXPRESS;Initial Catalog=training;integrated Security=true";
        foreach (GridViewRow gvr in GridView1.Rows)
        {
            con.Open();
            string data1 = ((TextBox)gvr.FindControl("Plant")).Text;
            string data2 = ((TextBox)gvr.FindControl("Startkms")).Text;
            string data3 = ((TextBox)gvr.FindControl("Site")).Text;
            string data4 = ((TextBox)gvr.FindControl("Client")).Text;
            string data5 = ((TextBox)gvr.FindControl("Strttime")).Text;
            string data6 = ((TextBox)gvr.FindControl("Arvtime")).Text;
            string data7 = ((TextBox)gvr.FindControl("Closekms")).Text;
            string data8 = ((TextBox)gvr.FindControl("Invoice")).Text;
            string data9 = ((TextBox)gvr.FindControl("Qty")).Text;
            string data10 = ((TextBox)gvr.FindControl("Remarks")).Text;

            SqlCommand command = new SqlCommand("INSERT INTO po_remarks" + "(Date,Plant,Startkms,Site,Client,Strttime,Arvtime,Closekms,Invoiceno,Totalkms,Qty,Remarks) VALUES(@Date,@Plant,@Startkms,@Site,@Client,@Starttime,@Arvtime,@Closekms,@Invoiceno,@Totalkms,@Qty,@Remarks)", con);   //generate insert sql using above data
            command.Parameters.AddWithValue("@Plant", data1);
            command.Parameters.AddWithValue("@Startkms", data2);
            command.Parameters.AddWithValue("@Site", data3);
            command.Parameters.AddWithValue("@Client", data4);
            command.Parameters.AddWithValue("@Strttime", data5);
            command.Parameters.AddWithValue("@Arvtime", data6);
            command.Parameters.AddWithValue("@Closekms", data7);
            command.Parameters.AddWithValue("@Invoiceno", data8);
            command.Parameters.AddWithValue("@Qty", data9);
            command.Parameters.AddWithValue("@Remarks", data10);
            command.ExecuteNonQuery();

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}