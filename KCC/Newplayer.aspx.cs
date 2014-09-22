using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Newplayer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }

    
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        
        if (ddl_role.SelectedValue == "0")
        {

            Response.Write("<Script>alert('Select role')</script>");
        }
        else if (ddl_batstyle.SelectedValue == "0")
        {

            Response.Write("<Script>alert('Select batting style')</script>");
        }
        else if (ddl_bowlstyle.Text == "0")
        {
            
            Response.Write("<Script>alert('Select bowling hand')</script>");
        }
        else if (ddl_bowlingstyle.Text == "0")
        {
            
            Response.Write("<Script>alert('Select bowling style')</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Player_info Values('" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_dob.Text + "','" + ddl_role.Text + "','" + ddl_batstyle.Text + "','" + ddl_bowlstyle.Text + "','" + ddl_bowlingstyle.Text + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<Script>alert('Data Inserted')</Script>");
            txt_lname.Text = "";
            txt_fname.Text = "";
            txt_dob.Text = "";
            ddl_role.SelectedIndex = 0;
            ddl_bowlstyle.SelectedIndex = 0;
            ddl_batstyle.SelectedIndex = 0;
            ddl_bowlingstyle.SelectedIndex = 0;
        }
        
    }



    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_lname.Text = "";
        txt_fname.Text = "";
        txt_dob.Text = "";
        ddl_role.SelectedIndex = 0;
        ddl_bowlstyle.SelectedIndex = 0;
        ddl_batstyle.SelectedIndex = 0;
        ddl_bowlingstyle.SelectedIndex = 0;

    }
}