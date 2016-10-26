using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class banhkem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenDangNhap"] != null) {
            Session.Remove("TenDangNhap");
        }

        if (Session["Url"] != null)
        {
            Response.Redirect(Session["Url"].ToString());
        }
        else
        {
            Response.Redirect("trangchu.aspx");
        }
    }
}