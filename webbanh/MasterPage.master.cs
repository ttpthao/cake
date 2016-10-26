using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Request.Url.AbsolutePath != "/dangnhap.aspx")
        {
            Session["Url"] = HttpContext.Current.Request.Url.AbsolutePath;
        }

        btnTimKiem.Click += new EventHandler(this.btnTimKiem_Click);
    }
   public void btnTimKiem_Click(Object sender,
                           EventArgs e)
    {
        //Redirect qua trang kết quả
        Button clickedButton = (Button)sender;
        Response.Redirect("ketqua.aspx?tukhoa=" + txtTimKiem.Text);
    }
}
