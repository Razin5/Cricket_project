using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Link_to_score_sheet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_done_Click(object sender, EventArgs e)
    {
        Session["against"] = txt_against.Text;
        Session["Date"] = txt_date.Text;
        Response.Redirect("Batting_score_card.aspx");
    }
}