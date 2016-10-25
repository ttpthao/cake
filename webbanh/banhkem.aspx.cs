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
        if (!IsPostBack)
        {
            string strQuery = "select * from Bai where DanhMuc=@DanhMuc";
            Database db = new Database();
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = "Bánh Kem";
            DataList1.DataSource = db.XULYDULIEU(cmd);
            DataList1.DataBind();
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        Label mabai = (Label)e.Item.FindControl("lblMaBai");
        if (mabai != null)
        {
            Response.Redirect("chitiet.aspx?mabai=" + mabai.Text);
        }
    }
}