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
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            try
            {
                String TenDN = txtTenDN.Text;
                String Matkhau = txtMatKhau.Text;
                String Matkhaumoi = txtMatKhauMoi.Text;
                String StrConn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
                SqlConnection cnn = new SqlConnection(StrConn);
                String LenhSQL = "select * from KhachHang where TenDN='" + TenDN + "' and MatKhau = '" + Matkhau + "'";
                DataTable dt = connect.Docbang(LenhSQL);
                if (dt.Rows.Count == 0)
                    lbTB.Text = "Sai tên đăng nhập hoặc mật khẩu";
                else
                {
                    string str = "UPDATE KhachHang Set MatKhau='" + Matkhaumoi + "'WHERE TenDN = '" + TenDN + "'";
                    connect.thuchienlenh(str);
                    Response.Redirect("~/DangNhap.aspx");
                }
            }
            catch
            {
                lbTB.Text = "Thao tác cập nhật dữ liệu thất bại!";
            }
        }
    }
}