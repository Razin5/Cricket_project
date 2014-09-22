using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //GridView1.ShowHeaderWhenEmpty = true;
        //GridView1.ShowFooter = true;
        //GridView1.ShowHeader = true;

        GridView1.DataBind();
        
        
        //if (!IsPostBack)
        //{
        //    this.Add();
        //}
        //else
        //{
            
            
        //}
    }

    //private void BindData()
    //{
        
    //    string strConnString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
    //    DataTable dt = new DataTable();
    //    using (SqlConnection con = new SqlConnection(strConnString))
    //    {
    //        string strQuery = "SELECT * FROM Customers";
    //        SqlCommand cmd = new SqlCommand(strQuery);
    //        using (SqlDataAdapter sda = new SqlDataAdapter())
    //        {
    //            cmd.Connection = con;
    //            con.Open();
    //            sda.SelectCommand = cmd;
    //            sda.Fill(dt);
    //            GridView1.DataSource = dt;
    //            GridView1.DataBind();
    //        }
       
    //    }
    //}
        protected void Add(object sender, EventArgs e)
    {
        lbl_against.Text = Session["against"].ToString();
        lbl_date.Text = Session["date"].ToString();
    Control control = null;
    if (GridView1.FooterRow != null)
    {
        control = GridView1.FooterRow;
    }
    else
    {
        control = GridView1.Controls[0].Controls[0];
    }
    string customerName = (control.FindControl("txtCustomerName") as TextBox).Text;
    string companyName = (control.FindControl("txtCompanyName") as TextBox).Text;
    string city = (control.FindControl("txtCity") as TextBox).Text;
    string city2 = (control.FindControl("lbl_city2") as Label).Text;
    city2 = "hey";
       
    string strConnString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
    using (SqlConnection con = new SqlConnection(strConnString))
    {
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [Customers] VALUES(@CustomerName, @CompanyName, @City, @city2, @against, @date)";
            cmd.Parameters.AddWithValue("@CustomerName", customerName);
            cmd.Parameters.AddWithValue("@CompanyName", companyName);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@City2", city2);
            cmd.Parameters.AddWithValue("@against", lbl_against.Text);
            cmd.Parameters.AddWithValue("@date", lbl_date.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    Response.Redirect(Request.Url.AbsoluteUri);
}
    }