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
    public partial class ChinhSuaSanPham : System.Web.UI.Page
    {
        private int ma;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                txtTenSP.Focus();
                if (Request.QueryString["MaSP"] != null)
                {
                    ma = int.Parse(Request.QueryString["MaSP"]);
                    string str = "select * from SanPham where MaSP=" + ma;
                    DataTable dt = new DataTable();
                    dt = connect.Docbang(str);
                    if (dt.Rows.Count > 0)
                    {
                        txtTenSP.Text = dt.Rows[0]["TenSP"].ToString();
                        txtMoTa.Text = dt.Rows[0]["MoTa"].ToString();
                        txtSoLuong.Text = dt.Rows[0]["SoLuong"].ToString();
                        txtGiaBan.Text = dt.Rows[0]["GiaBan"].ToString();
                        txtGiaKM.Text = dt.Rows[0]["GiaKhuyenMai"].ToString();
                        txtNgayTao.Text = dt.Rows[0]["NgayTao"].ToString();
                        txtMaLoai.Text = dt.Rows[0]["MaLoai"].ToString();
                        txtMaNSX.Text = dt.Rows[0]["MaNSX"].ToString();                        
                    }
                }
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string str1 = "UPDATE SanPham Set TenSP=N'" + txtTenSP.Text + "',N'" + txtMoTa.Text + "'," 
                + txtSoLuong.Text + "," + txtGiaBan.Text + "," + txtGiaKM.Text + "," + txtNgayTao.Text 
                + "," + txtMaLoai.Text + "," + txtMaNSX.Text + ",0" + "'WHERE MaSP = " + ma;
            connect.thuchienlenh(str1);
            Response.Redirect("~/Admin/DanhSachSanPham.aspx");
            lbTB.Text = "Chỉnh sửa sản phẩm thành công!!!";
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Session["TenSP"] = null;
            Session["Hinh"] = null;
            Session["MoTa"] = null;
            Session["SoLuong"] = null;
            Session["GiaBan"] = null;
            Session["GiaKhuyenMai"] = null;
            Session["NgayTao"] = null;
            Session["MaLoai"] = null;
            Session["MaNSX"] = null;
            Response.Redirect("~/Admin/DanhSachSanPham.aspx");
        }
    }
}