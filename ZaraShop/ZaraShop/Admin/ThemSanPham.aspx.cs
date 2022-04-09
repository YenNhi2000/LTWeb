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
    public partial class SanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                txtTenSP.Focus();
                txtNgayTao.Text = DateTime.Now.ToString("MM-dd-yyyy hh:mm:ss tt");
            }
        }

        
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (fulHinh.HasFile)
            {
                string tenSP, moTa, duongDan;
                int soLuong, maLoai, maNSX;
                float giaBan, giaKM=0;
                tenSP = txtTenSP.Text;
                soLuong = int.Parse(txtSoLuong.Text);
                giaBan = float.Parse(txtGiaBan.Text);
                try
                {
                    giaKM = float.Parse(txtGiaKM.Text);
                }
                catch
                {

                }
                maLoai = int.Parse(txtMaLoai.Text);
                maNSX = int.Parse(txtMaNSX.Text);
                moTa = txtMoTa.Text;

                duongDan = fulHinh.FileName;
                string luu = "~/Assets/images/clothes/" + fulHinh.FileName;
                fulHinh.SaveAs(MapPath(luu));

                SqlConnection conn = new SqlConnection(connect.StrConn);
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                cmd.CommandText = @"INSERT INTO SanPham(TenSP, Hinh, MoTa, SoLuong, GiaBan, GiaKhuyenMai, NgayTao, MaLoai, MaNSX, TrangThai) 
            Values (N'" + tenSP + "',N'" + duongDan + "',N'" + moTa + "'," + soLuong + "," + giaBan +  "," + giaKM + ", getdate()," + maLoai + "," + maNSX + ",0)";
                cmd.ExecuteNonQuery();
                conn.Close();
                if (cbThemSP.Checked)
                {
                    ResetControl();
                }
                else
                {
                    Response.Redirect("~/Admin/DanhSachSanPham.aspx");
                }
                lbTB.Text = "Thêm sản phẩm thành công";
            }
            lbTB.Text = "Bạn Chưa Tải Ảnh Lên";
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
            Response.Redirect("~/Admin/DanhSachNSX.aspx");
        }

        private void ResetControl()
        {
            txtTenSP.Text = "";
            txtMoTa.Text = "";
            txtSoLuong.Text = "";
            txtGiaBan.Text = "";
            txtGiaKM.Text = "";
            txtMaLoai.Text = "";
            txtMaNSX.Text = "";

            txtNgayTao.Text = DateTime.Now.ToString("MM/dd/yyyy");
        }
    }
}