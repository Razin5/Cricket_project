using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class Bowling_score_card : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
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
        string firstname = (control.FindControl("txt_fname") as TextBox).Text;
        string lastname = (control.FindControl("txt_lname") as TextBox).Text;
        string over = (control.FindControl("txt_over") as TextBox).Text;
        string maiden = (control.FindControl("txt_maiden") as TextBox).Text;
        string wickets = (control.FindControl("txt_wicket") as TextBox).Text;
        string runs = (control.FindControl("txt_runs") as TextBox).Text;
        string strConnString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO [bowlingcard] VALUES(@fname, @lname, @over, @maiden, @wickets, @runs, @against, @date)";
                cmd.Parameters.AddWithValue("@fname", firstname);
                cmd.Parameters.AddWithValue("@lname", lastname);
                cmd.Parameters.AddWithValue("@over", over);
                cmd.Parameters.AddWithValue("@maiden", maiden);
                cmd.Parameters.AddWithValue("@wickets", wickets);
                cmd.Parameters.AddWithValue("@runs", runs);
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