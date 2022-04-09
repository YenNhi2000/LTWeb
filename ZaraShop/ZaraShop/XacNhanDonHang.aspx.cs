using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class XacNhanDonHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select top 1 MAHD from HoaDon order by MaHD desc";
            DataTable dt = connect.Docbang(s);
            if (dt.Rows.Count > 0)
            {
                Label2.Text = (dt.Rows[0][0].ToString());
            }
        }
    }
}