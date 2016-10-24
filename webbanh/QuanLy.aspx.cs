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
    int mabai;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadBaiViet();
        }
    }
    private void LoadBaiViet()
    {
        string strQuery = "select * from Bai";
        Database db = new Database();
        SqlCommand cmd = new SqlCommand(strQuery);
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();
    }
    //Phan Trang
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        LoadBaiViet();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
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
    protected void Submit_DangBaiViet(object sender, EventArgs e)
    {
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
        cmd.Parameters.Add("@HinhDaiDien", SqlDbType.VarChar).Value = "";
        cmd.Parameters.Add("@NoiDung", SqlDbType.Text).Value = noidung;
        cmd.Parameters.Add("@NgayDang", SqlDbType.DateTime).Value = ngaydang;
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();

        txtTenBai.Text = "";
        CKEditor1.Text = "";
        ddlDanhMuc.SelectedIndex = 0;
    }
    protected void LayThongTinBaiViet(object sender, CommandEventArgs e)
    {
        //bắt sender từ button click
        LinkButton btn = (LinkButton)sender;
        //lấy mã bài
        mabai = Convert.ToInt32(e.CommandArgument.ToString());
        //get info của row đã chọn
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        txtTenBai.Text = ((Label)gvr.FindControl("lblTenBai")).Text;
        CKEditor1.Text = ((Label)gvr.FindControl("lblNoiDung")).Text;
        ddlDanhMuc.Text = ((Label)gvr.FindControl("lblDanhMuc")).Text;
    }
    protected void Submit_SuaBaiViet(object sender, EventArgs e)
    {
        Database db = new Database();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Bai set TenBai=@TenBai," +
         "NoiDung=@NoiDung, DanhMuc=@DanhMuc where MaBai=@Mabai;" +
         "select * from Bai";
        cmd.Parameters.Add("@TenBai", SqlDbType.NVarChar).Value = txtTenBai.Text;
        cmd.Parameters.Add("@NoiDung", SqlDbType.Text).Value = CKEditor1.Text;
        cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = ddlDanhMuc.SelectedValue;
        cmd.Parameters.Add("@Mabai", SqlDbType.Int).Value = mabai;
        GridView1.DataSource = db.XULYDULIEU(cmd);
        GridView1.DataBind();
    }
}