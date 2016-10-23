using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Database
/// </summary>
//LỚP KẾT NỐI CSDL
public class Database
{
    //kết nối
    SqlConnection con;
    public Database()
    {
        string Strcon = "Data Source=.;Initial Catalog=banhkem;Integrated Security=True"; 
        con = new SqlConnection(Strcon); //tạo 1 kết nối CSDL
    }

    //lấy dữ liệu lên
    public DataTable DOCDULIEU(string SQL)
    {
        SqlDataAdapter da = new SqlDataAdapter(SQL, con);    //vận chuyển dữ liệu
        DataSet ds = new DataSet(); //bao gồm các datatabe và relationship và constraint(ràng buộc) lưu trong bộ nhớ để làm việc offline
        da.Fill(ds);        //đổ dữ liệu vào bảng ảo
        return ds.Tables[0];
    }

    //thực hiện các lệnh
    public int THUCHIENLENH(string SQL)
    {
        SqlCommand cmd = new SqlCommand(SQL, con);  //thực thi các câu lệnh trong SQL
        con.Open();
        int a = cmd.ExecuteNonQuery(); //thực thi các câu truy vấn như INSERT, DELETE, UPDATE
        con.Close();
        return a;
    }
}
