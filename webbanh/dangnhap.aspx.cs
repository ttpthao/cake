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
        DataTable data = db.DOCDULIEU(string.Format("select * from Nguoi_Dung where TenDangNhap ='{0}' and MatKhau='{1}'", username, pass));
        if (data.Rows.Count > 0)
        {
            Session["TenDangNhap"] = data.Rows[0]["TenDangNhap"].ToString();
            if (Session["Url"] != null)
            {
                Response.Redirect(Session["Url"].ToString());
            }
            else
            {
                Response.Redirect("trangchu.aspx");
            }
        }
        else
        { 
            //đang nhap ko thanh cong
            Response.Write("Đăng nhập không thành công");
        }

    }
}