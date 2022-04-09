using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dlSanPham.DataSource = connect.Docbang("select * from SanPham Where TenSP LIKE N'%" + Session["timkiem"].ToString() + "%'");
            dlSanPham.DataBind();
            lblTuKhoa.Text = Session["timkiem"].ToString();
        }
    }
}