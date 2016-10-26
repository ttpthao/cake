<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;


public class ImageHandler : IHttpHandler {
    
        
    string strcon = "Server=tcp:shakuracake.database.windows.net;Database=shakuracake;User ID =shakuracake@shakuracake.database.windows.net; Password =Abcxyz123!;Trusted_Connection=False;Encrypt=True;"; 
    public void ProcessRequest (HttpContext context) {
        int mabai = Convert.ToInt32(context.Request.QueryString["mabai"]);
        SqlConnection connection = new SqlConnection(strcon);
        connection.Open();
        SqlCommand command = new SqlCommand("select HinhDaiDien from Bai where MaBai=" + mabai, connection);
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        connection.Close();
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}