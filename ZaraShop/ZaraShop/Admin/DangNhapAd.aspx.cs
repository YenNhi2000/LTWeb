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
    public partial class DangNhapAd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTenDN.Focus();
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            DataTable dt = connect.Docbang("select * from Admin where TenDN='" + txtTenDN.Text + "' and MatKhau='" + txtMatKhau.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtTenDN.Text;
                Response.Redirect("~/Admin/Default.aspx");
            }
            else
                lbTB.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ ! ";
            
        }
    }
}