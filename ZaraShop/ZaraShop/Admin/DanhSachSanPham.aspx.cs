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
    public partial class DanhMucSanPham : System.Web.UI.Page
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
                    string str = @"select * from SanPham";
                    dt = connect.Docbang(str);
                    gvDanhSach.DataSource = dt;
                    gvDanhSach.DataBind();
                }
            }
        }

        protected void gvDanhSach_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int ma = int.Parse(gvDanhSach.Rows[chiso].Cells[0].Text);
                    string str = "Delete from SanPham where MaSP=" + ma;
                    connect.thuchienlenh(str);
                    Response.Redirect("~/Admin/DanhSachSanPham.aspx");
                }
                catch
                {
                    lbBaoLoi.Text = "Thất bại!";
                }
            }
        }
    }
}