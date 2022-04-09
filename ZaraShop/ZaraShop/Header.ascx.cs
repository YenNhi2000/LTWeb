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
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
            {
                hlDangNhap.Visible = false;
                hlDangKy.Visible = false;
                lblTenDN.Visible = true;
                lblTenDN.Text = "Xin chào : " + Session["TenDN"].ToString();
                lbtDangXuat.Visible = true;
            }
            else
            {
                lblTenDN.Text = "";
                lblTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                hlDangNhap.Visible = true;
                hlDangKy.Visible = true;
            }
            if (Session["GioHang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Int32 tongSL = 0;
                foreach (DataRow r in dt.Rows)
                {
                    tongSL += Convert.ToInt32(r["SoLuong"]);
                    Label1.Text = "(" + tongSL.ToString() + ")";
                }
            }
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDN"] = null;
            Session["GioHang"] = null;
            Response.Redirect("~/TrangChu.aspx");
        }

        protected void btnTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            Session["timkiem"] = txtTimKiem.Text;
            Response.Redirect("~/TimKiem.aspx");
        }
    }
}