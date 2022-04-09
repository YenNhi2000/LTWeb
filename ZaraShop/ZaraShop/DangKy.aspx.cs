using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            string str1 = @"select 1 from KhachHang where TenDN=N'" + txtTenDN.Text + "'";
            if (connect.Docbang(str1).Rows.Count > 0)
            {
                lbTB.Text = "Tên đăng nhập đã tồn tại!!";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection conn = new SqlConnection(connect.StrConn);
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                cmd.CommandText = @"INSERT INTO KhachHang(HoTen,GioiTinh,NgaySinh,DiaChi,SDT,Email,TenDN,MatKhau) values(@HoTen,@GioiTinh,@NgaySinh,@DiaChi,@SDT,@Email,@TenDN,@MatKhau)";
                cmd.Parameters.Add("@HoTen", SqlDbType.NVarChar, 200);
                cmd.Parameters["@HoTen"].Value = txtHoTen.Text;
                cmd.Parameters.Add("@GioiTinh", SqlDbType.Bit);
                cmd.Parameters["@GioiTinh"].Value = (rdbNam.Checked == true ? 1 : 0);
                cmd.Parameters.Add("@NgaySinh", SqlDbType.Date);
                cmd.Parameters["@NgaySinh"].Value = DateTime.Parse(ddlThangSinh.Text + "/" + ddlNgaySinh.Text + "/" + txtNamSinh.Text);
                cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 500);
                cmd.Parameters["@DiaChi"].Value = txtDiaChi.Text;
                cmd.Parameters.Add("@SDT", SqlDbType.VarChar, 50);
                cmd.Parameters["@SDT"].Value = txtSdt.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 50);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.VarChar, 50);
                cmd.Parameters["@MatKhau"].Value = txtMatKhau.Text;
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/DangNhap.aspx");
            }
        }
    }
}