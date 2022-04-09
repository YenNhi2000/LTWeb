using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop.Admin
{
    public partial class ThemNSX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                txtTenNSX.Focus();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect.StrConn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            string tenNSX, diaChi, sdt;
            tenNSX = txtTenNSX.Text;
            diaChi = txtDiaChi.Text;
            sdt = txtSdt.Text;
            cmd.CommandText = @"INSERT INTO NhaSanXuat(TenNSX,DiaChi,SDT) values(N'" + tenNSX + "',N'" + diaChi + "','" + sdt + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            if (cbThemNSX.Checked)
            {
                ResetControl();
            }
            else
            {
                Response.Redirect("~/DanhSachNSX.aspx");
            }
            lbTB.Text = "Thêm nhà sản xuất thành công!!!";
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Session["TenNSX"] = null;
            Session["DiaChi"] = null;
            Session["SDT"] = null;
            Response.Redirect("~/Admin/DanhSachNSX.aspx");
        }

        private void ResetControl()
        {
            txtTenNSX.Text = "";
            txtDiaChi.Text = "";
            txtSdt.Text = "";
        }
    }
}