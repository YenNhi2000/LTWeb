using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZaraShop.App_Code;

namespace ZaraShop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUser.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = connect.Docbang("select * from KhachHang where TenDN='" + txtUser.Text + "' and MatKhau='" + txtPass.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtUser.Text;
                Response.Redirect("~/TrangChu.aspx");
            }
            else
                lbTB.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ ! ";
        }

        protected void btnTaoTK_Click(object sender, EventArgs e)
        {
            Session["TenDN"] = null;
            Session["MatKhau"] = null;
            Response.Redirect("~/DangKy.aspx");
        }
    }
}