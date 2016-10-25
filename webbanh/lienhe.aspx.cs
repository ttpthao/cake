using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngui_Click(object sender, EventArgs e)
    {
        string HoTen = txtten.Text;
        string SDT = txtphone.Text;
        string GhiChu = txtnoidung.Text;

        Database db = new Database();
        // tạo chuỗi kết nối, gán đánh số thứ tự và gán giá trị
        string sql = string.Format("insert into LienHe(HoTen,DienThoai,NoiDung) values (N'{0}',N'{1}','{2}')",
                HoTen, SDT, GhiChu
            );

        int a = db.THUCHIENLENH(sql);
        if (a == 1)
        {
            ShowMessage("Đã gửi liên hệ!");
        }
        else
        {
            ShowMessage("Đã xảy ra lỗi!");
        }

    }

    //xuất thông báo
    private void ShowMessage(string p)
    {
        ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script language = 'javascript'> alert('" + p + "'); </script>");
    }
}
