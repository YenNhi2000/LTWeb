using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        private int ma;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaSP"] != null)
            {
                ma = int.Parse(Request.QueryString["MaSP"]);

                string str = "select TenSP from SanPham where TrangThai = 1 and MaSP=" + ma;
                DataTable dt = connect.Docbang(str);
                if (dt.Rows.Count > 0)
                {
                    lblTenSP.Text = dt.Rows[0][0].ToString();
                }
                DataList1.DataSource = connect.Docbang("Select * From SanPham,NhaSanXuat where NhaSanXuat.MaNSX = SanPham.MaNSX and TrangThai = 1 and MaSP=" + ma);
                DataList1.DataBind();
            }
        }
    }
}