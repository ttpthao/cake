using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        string username = txtten.Text;
        string pass = txtmatkhau.Text;

        Database db = new Database();
        DataTable data = db.DOCDULIEU(string.Format("select*from dangnhap where tendangnhap ='{0}' and matkhau='{1}'", username, pass));
        if (data.Rows.Count > 0)
        {
            Session["UserName"] = data.Rows[0]["tendangnhap"].ToString();
            Response.Redirect("trangchu.aspx");
        }
        else
        { 
            //đang nhap ko thanh cong
            Response.Write("đăng nhập không thành công");
        }

    }
}