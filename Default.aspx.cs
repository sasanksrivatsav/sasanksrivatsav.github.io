using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    BindGrid();
        //}
    }

      protected void submit_Click(object sender, EventArgs e)
    {
        
        BindGrid();


    }

    protected void BindGrid()
    
 
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
                //GridView1.DataSource = cmd.ExecuteReader();



                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds;
                GridView1.DataBind();

                }

            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();

            }
            finally
            {
                

                con.Dispose();

            }
            //System.Threading.Thread.Sleep(2000);
        }
    
protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           
            
           if ((string)(DataBinder.Eval(e.Row.DataItem, "remarks")) == "")

            {
                e.Row.BackColor = Color.FromName("white");
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='yellow'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='white'");
                
            }
            else
            {
                e.Row.BackColor = Color.FromName("YELLOW");
                e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='yellow'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='orange'");
            }
        }
     }
    private string SearchString = "";

    public string HighlightText(string InputTxt)
    {
        string Search_Str = txtSearch.Text;
        // Setup the regular expression and add the Or operator.
        Regex RegExp = new Regex(Search_Str.Replace(" ", "|").Trim(), RegexOptions.IgnoreCase);
        // Highlight keywords by calling the
        //delegate each time a keyword is found.
        return RegExp.Replace(InputTxt, new MatchEvaluator(ReplaceKeyWords));
    }

    public string ReplaceKeyWords(Match m)
    {
        return ("<span class=highlight>" + m.Value + "</span>");
    }
          
        
    

     protected void reset_Click(object sender, EventArgs e)
     {

        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
       
     }

   

    protected void save_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data source= LAPTOP-6\\SQLEXPRESS;Initial Catalog=training;integrated Security=true";
        foreach (GridViewRow gvr in GridView1.Rows)
        {
            CheckBox check = (CheckBox)gvr.FindControl("check");
            if (check.Checked)
            {
                conn.Open();
                string data1 = ((Label)gvr.FindControl("pomas_pono")).Text;    
                string data2 = ((Label)gvr.FindControl("pomas_suppliercode")).Text;
                string data3 = ((Label)gvr.FindControl("pomas_pobasicvalue")).Text;
                string data4 = ((Label)gvr.FindControl("poitm_itemcode")).Text;
                string data5 = ((Label)gvr.FindControl("poitm_order_quantity")).Text;
                string data6 = ((Label)gvr.FindControl("poitm_itemvalue")).Text;
                string data7 = ((Label)gvr.FindControl("poitm_itemdescription")).Text;
                string data8 = ((TextBox)gvr.FindControl("remarks")).Text;

                SqlCommand command = new SqlCommand("INSERT INTO po_remarks" + "(pomas_pono,pomas_suppliercode,pomas_pobasicvalue,poitm_itemcode,poitm_order_quantity,poitm_itemvalue,poitm_itemdescription,remarks) VALUES(@pomas_pono,@pomas_suppliercode,@pomas_pobasicvalue,@poitm_itemcode,@poitm_order_quantity,@poitm_itemvalue,@poitm_itemdescription,@remarks)", conn);   //generate insert sql using above data
                command.Parameters.AddWithValue("@pomas_pono", data1);
                command.Parameters.AddWithValue("@pomas_suppliercode", data2);
                command.Parameters.AddWithValue("@pomas_pobasicvalue", data3);
                command.Parameters.AddWithValue("@poitm_itemcode", data4);
                command.Parameters.AddWithValue("@poitm_order_quantity", data5);
                command.Parameters.AddWithValue("@poitm_itemvalue", data6);
                command.Parameters.AddWithValue("@poitm_itemdescription", data7);
                command.Parameters.AddWithValue("@remarks", data8);
                command.ExecuteNonQuery();

            }
            
        }

        conn.Close();

    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Default.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
//        DataTable dtsearch=new DataTable 
//dtsearch = SearchStudio();

//if (dtsearch.Rows.Count > 0)
//{
//pnlStudioInfo.Visible = true;
//gdvStudio.DataSource = dtsearch;
//ViewState["file"] = dtsearch;
//gdvStudio.DataBind();
//}
        SearchString = txtSearch.Text;
    }
    
}


