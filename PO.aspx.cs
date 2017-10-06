using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void submit_Click(object sender, EventArgs e)
   
    {
        SqlConnection con = new SqlConnection();
         
        con.ConnectionString = "Data source= LAPTOP-6\\SQLEXPRESS;Initial Catalog=training;integrated Security=true";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Sp_PO";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@date1", TextBox1.Text.ToString());
        cmd.Parameters.AddWithValue("@date2", TextBox2.Text.ToString());
        cmd.Connection = con;

        try
        {
            con.Open();
            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            throw ex;
            //Message
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    private void GetData()
    {
        DataTable dt;
        if (ViewState["SelectedRecords"] != null)
            dt = (DataTable)ViewState["SelectedRecords"];
        else
            dt = CreateDataTable();
        CheckBox chkAll = (CheckBox)gvAll.HeaderRow
                            .Cells[0].FindControl("chkAll");
        for (int i = 0; i < gvAll.Rows.Count; i++)
        {
            if (chkAll.Checked)
            {
                dt = AddRow(gvAll.Rows[i], dt);
            }
            else
            {
                CheckBox chk = (CheckBox)gvAll.Rows[i]
                                .Cells[0].FindControl("chk");
                if (chk.Checked)
                {
                    dt = AddRow(gvAll.Rows[i], dt);
                }
                else
                {
                    dt = RemoveRow(gvAll.Rows[i], dt);
                }
            }
        }
        ViewState["SelectedRecords"] = dt;
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            // so on youe all controls
        
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{


    //    if (DataControlRowType.DataRow == e.Row.RowType && e.Row.RowState != DataControlRowState.Edit && (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate))
    //    {
    //        TextBox tx = new TextBox();  //here i m adding a control.
    //        tx.ID = "remarks";
    //        tx.Attributes.Add("runat", "server");
    //        int i = e.Row.Cells.Count;
    //        i = i - 1;
    //        e.Row.Cells[i].Controls.Add(tx);   //textbox is added as last column of grid
    //    }
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
    }
}
