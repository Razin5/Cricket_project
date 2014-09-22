using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit_delete_player : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        txt_lname.Text ="";
        txt_name.Text = "";
        gv_player.DataBind();
        gv_player.EmptyDataText = "No such player found"; 
        if (gv_player.)
    }

    
}