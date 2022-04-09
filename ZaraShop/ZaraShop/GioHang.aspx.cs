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
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["TenDN"] == null)
                    Response.Redirect("~/DangNhap.aspx");
                if (Request.QueryString["MaSP"] != null)
                {
                    int Ma = int.Parse(Request.QueryString["MaSP"]);
                    DataTable dt = connect.Docbang("Select TenSP, Hinh, GiaBan, GiaKhuyenMai From SanPham where MaSP = " + Ma);

                    string TenSP = dt.Rows[0][0].ToString();
                    string Hinh = dt.Rows[0][1].ToString();
                    float GiaBan = float.Parse(dt.Rows[0][2].ToString());
                    int SoLuong = 1;
                    ThemVaoGioHang(Ma, TenSP, GiaBan, SoLuong);
                }
                if (Session["GioHang"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = (DataTable)Session["GioHang"];
                    System.Decimal tongThanhTien = 0;
                    foreach (DataRow r in dt.Rows)
                    {
                        r["ThanhTien"] = Convert.ToInt32(r["SoLuong"]) * Convert.ToDecimal(r["GiaBan"]);
                        tongThanhTien += Convert.ToDecimal(r["ThanhTien"]);
                        lblTien.Text = tongThanhTien.ToString();
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                if (Session["TenDN"] != null)
                {
                    string s1 = "select MaKH,HoTen,DiaChi,SDT,Email from KhachHang where TenDN='" + Session["TenDN"].ToString() + "'";
                    DataTable dt1 = connect.Docbang(s1);
                    if (dt1.Rows.Count > 0)
                    {
                        MaKH = int.Parse(dt1.Rows[0][0].ToString());
                        txtHoTen.Text = dt1.Rows[0][1].ToString();
                        txtDiaChi.Text = dt1.Rows[0][2].ToString();
                        txtSdt.Text = dt1.Rows[0][3].ToString();
                        txtEmail.Text = dt1.Rows[0][4].ToString();
                    }
                }
            }
        }

        public void ThemVaoGioHang(int MaSP, string TenSP, float GiaBan, int SoLuong)
        {
            DataTable dt;
            if (Session["GioHang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MaSP");
                dt.Columns.Add("TenSP");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("GiaBan");
                dt.Columns.Add("ThanhTien");
            }
            else
                dt = (DataTable)Session["GioHang"];
            int dong = SPdaco(MaSP, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + SoLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["MaSP"] = MaSP;
                dr["TenSP"] = TenSP;
                dr["GiaBan"] = GiaBan;
                dr["SoLuong"] = SoLuong;
                dr["ThanhTien"] = GiaBan * SoLuong;
                dt.Rows.Add(dr);
            }
            Session["GioHang"] = dt;
        }

        public static int SPdaco(int MaSP, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (int.Parse(dt.Rows[i]["MaSP"].ToString()) == MaSP)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["GioHang"] = dt;
                    Response.Redirect("~/GioHang.aspx");
                }
                catch
                {
                    Response.Redirect("~/GioHang.aspx");
                }
            }
        }

        protected void btnTiepTuc_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TrangChu.aspx");
        }

        protected void btnXoaGH_Click(object sender, EventArgs e)
        {
            Session["GioHang"] = null;
            Response.Redirect("~/TrangChu.aspx");
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in GridView1.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(GridView1.DataKeys[r.DataItemIndex].Value) == dr["MaSP"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[3].FindControl("txtSoLuong");
                        Label3.Text = t.ToString();
                        if (Convert.ToInt32(t.Text) <= 0)
                            dt.Rows.Remove(dr);
                        else
                            dr["SoLuong"] = t.Text;
                        break;
                    }
                }
            }
            Session["GioHang"] = dt;
            Response.Redirect("~/GioHang.aspx");
        }

        private int MaKH;
        protected void btnDongY_Click(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
                Response.Redirect("~/DangNhap.aspx");
            else
            {
                string str = "select MaKH from KhachHang where TenDN='" + Session["TenDN"].ToString() + "'";
                DataTable dt = connect.Docbang(str);
                if (dt.Rows.Count > 0)
                {
                    MaKH = int.Parse(dt.Rows[0][0].ToString());
                }
                int httt, htgh;
                string TenNguoiNhan, DiaChiNhan, DienThoaiNhan, NgayDatHang, NgayGiao;
                TenNguoiNhan = txtNguoiNhan.Text;
                DiaChiNhan = txtDCgiao.Text;
                DienThoaiNhan = txtSdtNhan.Text;

                NgayDatHang = DateTime.Today.ToString();
                NgayGiao = CalNgayGiao.SelectedDate.ToString();

                float tongThanhTien = float.Parse(lblTien.Text);
                httt = Convert.ToInt32(rdtt.SelectedItem.Value);
                htgh = Convert.ToInt32(rdgiao.SelectedItem.Value);

                try
                {
                    string s = "INSERT INTO HoaDon(MaKH, NgayDat, NgayGiao, TenNguoiNhan, DiaChiNhan, SDT, TongTien, HinhThucTT, HinhThucGH)" +
                        "VALUES(" + MaKH + ", '" + NgayDatHang + "', '" + NgayGiao + "',N'" + TenNguoiNhan + "',N'" + DiaChiNhan + "','" + DienThoaiNhan + "'," + tongThanhTien + "," + httt + "," + htgh + ")";
                    connect.thuchienlenh(s);
                    //Lay SoDH vua nhap sau cung
                    s = "Select max(MaHD) from HoaDon where MaKH = " + MaKH;
                    int SoDH = int.Parse(connect.Getdata(s).ToString());
                    DataTable dt1 = new DataTable();
                    dt1 = (DataTable)Session["GioHang"];
                    int MaSP, Soluong, Thanhtien;
                    float Dongia;
                    for (int i = 0; i < dt1.Rows.Count; i++)
                    {
                        MaSP = int.Parse(dt1.Rows[i]["MaSP"].ToString());
                        Soluong = int.Parse(dt1.Rows[i]["SoLuong"].ToString());
                        Dongia = int.Parse(dt1.Rows[i]["GiaBan"].ToString());
                        Thanhtien = int.Parse(dt1.Rows[i]["ThanhTien"].ToString());
                        s = "INSERT INTO ChiTietHD(MaHD, MaSP, SoLuong, DonGia, ThanhTien) " +
                            "VALUES(" + SoDH + ", " + MaSP + "," + Soluong + "," + Dongia + "," + Thanhtien + ")";
                        connect.thuchienlenh(s);
                    }
                    Session["GioHang"] = null;
                    Response.Redirect("~/XacNhanDonHang.aspx");
                }
                catch
                {
                    lbloi.Text = " Xin cáo lỗi? <br> Quá trình cập nhật dữ liệu không thành công!";
                }
            }
        }
    }
}


//SqlConnection con = new SqlConnection(connect.StrConn);
//con.Open();
//SqlCommand cmd = new SqlCommand();
//cmd.CommandType = CommandType.Text;
//cmd.Connection = con;
//cmd.CommandText = @"INSERT INTO  
//HoaDon(MaKH, NgayDat, NgayGiao, TenNguoiNhan, DiaChiNhan, SDT, TongTien, TrangThai, HinhThucTT, HinhThucGH) 
//Values (" + MaKH + ", @ngaydathang,@ngaygiaohang,N'" + TenNguoiNhan + "',N'" + DiaChiNhan + "','" + DienThoaiNhan + "'," + tongThanhTien + ",1," + httt + "," + htgh + ")";
//cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
//cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
//cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
//cmd.Parameters["@ngaygiaohang"].Value = CalNgayGiao.SelectedDate;
//cmd.ExecuteNonQuery();
//con.Close();
//string str1 = "Select max(MAHD) from HoaDon where MaKH=" + MaKH;
//int SoDonHang = int.Parse(connect.Docbang(str1).Rows[0][0].ToString());
//DataTable dt1 = new DataTable();
//dt1 = (DataTable)Session["GioHang"];
//int MaSP, SoLuong;
//float DonGia;
//for (int i = 0; i < dt1.Rows.Count; i++)
//{
//    MaSP = int.Parse(dt1.Rows[i]["MaSP"].ToString());
//    SoLuong = int.Parse(dt1.Rows[i]["SoLuong"].ToString());
//    DonGia = int.Parse(dt1.Rows[i]["GiaBan"].ToString());
//    str1 = "INSERT INTO CTDATHANG(MaHD, MaGiay, SoLuong, DonGia) VALUES(" + SoDonHang + "," + MaGiay + "," + SoLuong + "," + DonGia + ")";
//    connect.thuchienlenh(str1);
//}
//Session["GioHang"] = null;
//Response.Redirect("~/chitietthanhtoan.aspx");