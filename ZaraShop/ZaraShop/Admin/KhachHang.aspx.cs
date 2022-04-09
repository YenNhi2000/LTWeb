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
    public partial class KhachHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                if (!IsPostBack)
                {
                    DataTable dt = new DataTable();
                    string str = @"select * from KhachHang";
                    dt = connect.Docbang(str);
                    gvDanhSach.DataSource = dt;
                    gvDanhSach.DataBind();
                }
            }
        }
    }
}