using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string tukhoa = Request.QueryString["tukhoa"];
            if (tukhoa != null && tukhoa != "") {
                string strQuery = "select * from Bai where TenBai Like '%' + @TenBai + '%'";
                Database db = new Database();
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@TenBai", SqlDbType.NVarChar).Value = tukhoa;
                DataList1.DataSource = db.XULYDULIEU(cmd);
                DataList1.DataBind();
            }
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