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
        if (Session["TenDangNhap"] == null)
        {
            Response.Redirect("dangnhap.aspx");
        }

        if (!IsPostBack)
        {
            LoadBaiViet();
        }
    }
    //Load Dữ Liệu Lên GridView
    private void LoadBaiViet()
    {
        string strQuery = "select * from Bai";
        Database db = new Database();
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();
    }
    //Phân Trang
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        LoadBaiViet();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
    //Xóa Bài Viết
    protected void XoaBaiViet(object sender, EventArgs e)
    {
        LinkButton linkXoa = (LinkButton)sender;
        Database db = new Database();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from Bai where " +
        "MaBai=@MaBai;" +
        "select * from Bai";
        cmd.Parameters.Add("@MaBai", SqlDbType.VarChar).Value
            = linkXoa.CommandArgument;
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();
    }
    //Click Button Đăng Bài
    protected void Submit_DangBaiViet(object sender, EventArgs e)
    {

        if (fulHinhDaiDien.HasFile)
        {
            //getting length of uploaded file
            int length = fulHinhDaiDien.PostedFile.ContentLength;
            //create a byte array to store the binary image data
            byte[] imgbyte = new byte[length];
            //store the currently selected file in memeory
            HttpPostedFile img = fulHinhDaiDien.PostedFile;
            //set the binary data
            img.InputStream.Read(imgbyte, 0, length);
        

            string tenbai = txtTenBai.Text;
            string noidung = CKEditor1.Text;
            string danhmuc = ddlDanhMuc.SelectedValue;
            DateTime ngaydang = DateTime.Now;
            Database db = new Database();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Bai(TenBai, DanhMuc,HinhDaiDien, NoiDung, NgayDang) " +
            "values(@TenBai, @DanhMuc, @HinhDaiDien, @NoiDung, @NgayDang);" +
            "select * from Bai";
            cmd.Parameters.Add("@TenBai", SqlDbType.NVarChar).Value = tenbai;
            cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = danhmuc;
            cmd.Parameters.Add("@HinhDaiDien", SqlDbType.Image).Value = imgbyte;
            cmd.Parameters.Add("@NoiDung", SqlDbType.NVarChar).Value = Server.HtmlEncode(noidung);
            cmd.Parameters.Add("@NgayDang", SqlDbType.DateTime).Value = ngaydang;
            GridView1.DataSource = db.XULYDULIEU(cmd);
            GridView1.DataBind();

            //submit xóa hết input
            txtTenBai.Text = "";
            CKEditor1.Text = "";
            ddlDanhMuc.SelectedIndex = 0;
        }
    }
    //Click Button Sửa -> Hiển thị dữ liệu vào textbox + ckeditor
    protected void LayThongTinBaiViet(object sender, CommandEventArgs e)
    {
        //bắt sender từ button click
        LinkButton btn = (LinkButton)sender;
        //lấy mã bài
        int mabai = Convert.ToInt32(e.CommandArgument.ToString());
        //get info của row đã chọn
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        txtTenBai.Text = ((Label)gvr.FindControl("lblTenBai")).Text;
        CKEditor1.Text = Server.HtmlDecode(((Label)gvr.FindControl("lblNoiDung")).Text);
        ddlDanhMuc.Text = ((Label)gvr.FindControl("lblDanhMuc")).Text;
        lblMaBaiHidden.Text = mabai.ToString();
    }

    //Click button sửa bài viết
    protected void Submit_SuaBaiViet(object sender, EventArgs e)
    {
        int mabai = Convert.ToInt32(lblMaBaiHidden.Text);
        DateTime ngaydang = DateTime.Now;
        Database db = new Database();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Bai set TenBai=@TenBai," +
         "DanhMuc=@DanhMuc,HinhDaiDien=@HinhDaiDien, NoiDung=@NoiDung, NgayDang=@NgayDang where MaBai=@Mabai;" +
         "select * from Bai";
        cmd.Parameters.Add("@TenBai", SqlDbType.NVarChar).Value = txtTenBai.Text;
        cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = ddlDanhMuc.SelectedValue;
        cmd.Parameters.Add("@HinhDaiDien", SqlDbType.VarChar).Value = "";
        cmd.Parameters.Add("@NoiDung", SqlDbType.NVarChar).Value = Server.HtmlEncode(CKEditor1.Text);
        cmd.Parameters.Add("@NgayDang", SqlDbType.DateTime).Value = ngaydang;
        cmd.Parameters.Add("@Mabai", SqlDbType.Int).Value = mabai;
        GridView1.EditIndex = -1;
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();

        //submit xóa hết input
        txtTenBai.Text = "";
        CKEditor1.Text = "";
        ddlDanhMuc.SelectedIndex = 0;
    }

    //Lọc dữ liệu
    protected void dbGrid_SelectedIndexChanged(Object sender, EventArgs e) {
        Database db = new Database();
        SqlCommand cmd;
        if (ddlHienThiDanhMuc.SelectedValue != "") {
            cmd = new SqlCommand("select * from Bai where DanhMuc=@DanhMuc;");
            cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = ddlHienThiDanhMuc.SelectedValue;
        }
        else
        {
            cmd = new SqlCommand("select * from Bai");
            
        }
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();

        txtTenBai.Text = "";
        CKEditor1.Text = "";
        ddlDanhMuc.SelectedIndex = 0;
    }
}