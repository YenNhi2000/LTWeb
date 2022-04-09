using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop.Admin
{
    public partial class DonDatHang : System.Web.UI.Page
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
                    string str = @"select * from HoaDon";
                    dt = connect.Docbang(str);
                    gvDanhSach.DataSource = dt;
                    gvDanhSach.DataBind();
                }
            }
        }
    }
}