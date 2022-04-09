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
    public partial class SanPham : System.Web.UI.Page
    {
        private int ma;
        private string s;
        private DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["MaLoai"] != null)
                {
                    ma = int.Parse(Request.QueryString["MaLoai"]);
                    if (ma == 1)
                    {
                        lblTenSP.Text = "Áo thun";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 1");
                        dlSanPham.DataBind();
                    }
                    else
                    if (ma == 2)
                    {
                        lblTenSP.Text = "Áo sơ mi";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 2");
                        dlSanPham.DataBind();
                    }
                    else
                    if(ma == 3)
                    {
                        lblTenSP.Text = "Áo khoác";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 3");
                        dlSanPham.DataBind();
                    }
                    else
                    if (ma == 4)
                    {
                        lblTenSP.Text = "Quần short";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 4");
                        dlSanPham.DataBind();
                    }
                    else
                    if(ma == 5)
                    {
                        lblTenSP.Text = "Quần dài";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 5");
                        dlSanPham.DataBind();
                    }
                    else
                    if(ma == 6)
                    {
                        lblTenSP.Text = "Chân váy";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 6");
                        dlSanPham.DataBind();
                    }
                    else
                    if(ma == 7)
                    {
                        lblTenSP.Text = "Đầm";
                        dlSanPham.DataSource = connect.Docbang("Select * From SanPham where MaLoai = 7");
                        dlSanPham.DataBind();
                    }
                    else
                    if (ma == 0)
                    {
                        s = "select TenLoai from LoaiSP where MaLoai=" + ma;
                        dt = connect.Docbang(s);
                        if (dt.Rows.Count > 0)
                        {
                            lblTenSP.Text = dt.Rows[0][0].ToString();
                        }
                        dlSanPham.DataSource = connect.Docbang("select * from SanPham");
                        dlSanPham.DataBind();
                    }
                    else
                    {
                        s = "select TenLoai from LoaiSP where MaLoai=" + ma;
                        dt = connect.Docbang(s);
                        if (dt.Rows.Count > 0)
                        {
                            lblTenSP.Text = dt.Rows[0][0].ToString();
                        }
                        dlSanPham.DataSource = connect.Docbang("select * from SanPham where MaLoai=" + ma);
                        dlSanPham.DataBind();
                    }
                }
                else
                {
                    dlSanPham.DataSource = connect.Docbang("select * from SanPham");
                    dlSanPham.DataBind();
                }
            }
        }
    }
}