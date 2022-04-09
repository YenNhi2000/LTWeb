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
    public partial class ChiTietDH : System.Web.UI.Page
    {
        private int ma;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                if (!IsPostBack)
                {
                    if(Request.QueryString["MaHD"] != null)
                    {
                        ma = int.Parse(Request.QueryString["MaHD"]);
                        DataTable dt = new DataTable();
                        string str = @"select * from ChiTietHD where MaHD=" + ma;
                        dt = connect.Docbang(str);
                        gvDanhSach.DataSource = dt;
                        gvDanhSach.DataBind();
                    }
                }
            }
        }
    }
}