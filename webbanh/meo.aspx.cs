﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class meo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database db = new Database();
        //Load Hình 
        string sqlCategory = string.Format("select*from banhkem.dbo.hinhanh");
        DataTable dataIteam = db.DOCDULIEU(sqlCategory);
        Repeater_Item.DataSource = dataIteam;
        Repeater_Item.DataBind(); 
    }


}