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

namespace ZaraShop.Admin
{
    public partial class ChinhSuaNSX : System.Web.UI.Page
    {
        private int ma;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/Admin/DangNhapAd.aspx");
            else
            {
                txtTenNSX.Focus();
                if (Request.QueryString["MaNSX"] != null)
                {
                    ma = int.Parse(Request.QueryString["MaNSX"]);
                    string str = "select * from NhaSanXuat where MaNSX=" + ma;
                    DataTable dt = new DataTable();
                    dt = connect.Docbang(str);
                    if (dt.Rows.Count > 0)
                    {
                        txtTenNSX.Text = dt.Rows[0]["TenNSX"].ToString();
                        txtDiaChi.Text = dt.Rows[0]["DiaChi"].ToString();
                        txtSdt.Text = dt.Rows[0]["SDT"].ToString();
                    }
                }
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["MaNSX"] != null)
            {
                ma = int.Parse(Request.QueryString["MaNSX"]);
                try
                {

                    String TenNSX = txtTenNSX.Text;
                    String DiaChi = txtDiaChi.Text;
                    String Sdt = txtSdt.Text;
                    String StrConn = ConfigurationManager.ConnectionStrings["KetnoiCSDL"].ConnectionString.ToString();
                    SqlConnection cnn = new SqlConnection(StrConn);
                    //String LenhSQL = "select * from NhaSanXuat where MaNSX='" + ma;
                    //DataTable dt = connect.Docbang(LenhSQL);
                    string str1 = "UPDATE NhaSanXuat Set TenNSX=N'" + TenNSX + "',DiaChi=N'" + DiaChi + "',SDT='" + Sdt + "'WHERE MaNSX = " + ma;
                    connect.thuchienlenh(str1);
                    Response.Redirect("~/Admin/DanhSachNSX.aspx");
                    lbTB.Text = "Chỉnh sửa nhà sản xuất thành công!!!";

                }
                catch
                {
                    lbTB.Text = "Chỉnh sửa nhà sản xuất thất bại!!!";
                }
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Session["TenNSX"] = null;
            Session["DiaChi"] = null;
            Session["SDT"] = null;
            Response.Redirect("~/Admin/DanhSachNSX.aspx");
        }
    }
}