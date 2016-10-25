using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chitiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mabai = Request.QueryString["mabai"];
            if (mabai != null && mabai != "")
            {
                string strQuery = "select * from Bai where Mabai=@Mabai";
                Database db = new Database();
                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.Add("@Mabai", SqlDbType.NVarChar).Value = mabai;
                SqlDataReader reader = db.LAYDULIEUCHITIET(cmd);
                while (reader.Read())
                {
                    lblTenBai.Text = reader["TenBai"].ToString();
                    lblNoiDung.Text = Server.HtmlDecode(reader["NoiDung"].ToString());
                }
            }
        }
    }
}