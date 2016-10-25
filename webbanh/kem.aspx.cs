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
            string strQuery = "select * from Bai where DanhMuc=@DanhMuc";
            Database db = new Database();
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@DanhMuc", SqlDbType.NVarChar).Value = "Kem";
            DataList1.DataSource = db.XULYDULIEU(cmd);
            DataList1.DataBind();
        }
    }
}