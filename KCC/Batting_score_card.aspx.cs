using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Batting_score_card : System.Web.UI.Page
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
        string runs = (control.FindControl("txt_run") as TextBox).Text;
        string balls = (control.FindControl("txt_balls") as TextBox).Text;
        string Out = (control.FindControl("txt_out") as TextBox).Text;
        string bowler = (control.FindControl("txt_bowler") as TextBox).Text;
        string four = (control.FindControl("txt_four") as TextBox).Text;
        string six = (control.FindControl("txt_six") as TextBox).Text;
        string strConnString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO [baatingcard] VALUES(@fname, @lname, @runs, @ballfaced, @how, @who, @four, @six, @against, @date)";
                cmd.Parameters.AddWithValue("@fname", firstname);
                cmd.Parameters.AddWithValue("@lname", lastname);
                cmd.Parameters.AddWithValue("@runs", runs);
                cmd.Parameters.AddWithValue("@ballfaced", balls);
                cmd.Parameters.AddWithValue("@how", Out);
                cmd.Parameters.AddWithValue("@who", bowler);
                cmd.Parameters.AddWithValue("@four", four);
                cmd.Parameters.AddWithValue("@six", six);
                cmd.Parameters.AddWithValue("@against", lbl_against.Text);
                cmd.Parameters.AddWithValue("@date", lbl_date.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void btn_bowling_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bowling_score_card.aspx");
    }
}
