<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="ZaraShop.ChiTietSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .mua {    
    cursor: pointer;
    border: none;
    outline: none;
    display: inline-block;
    font-size: 1em;
    margin-top: 40px;
    padding: 15px 20px;
    background: #4CB1CA;
    color: #FFF;
    text-transform: uppercase;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Assets/css/chitiet.css" rel="stylesheet" />
    <div class="main">
        <div id="mid2">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/TrangChu.aspx" Font-Underline="False">Trang chủ</asp:HyperLink>
        &nbsp;/
            <asp:Label ID="lblTenSP" runat="server"></asp:Label>
        </div>
        <div class="container">
            <asp:DataList ID="DataList1" runat="server" >
                <ItemTemplate>
                    <div class="left">
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Assets/images/clothes/"+Eval("Hinh") %>' Width="280px" Height="300px" />
                    </div>

                    <div class="right">
                        <div id="tensp">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                        </div>

                        <div id="gia">
                            <asp:Label ID="Label4" runat="server" CssClass="actual" Text='<%# Eval("GiaKhuyenMai").ToString().Length > 0 ? Eval("GiaKhuyenMai", "{0:0,00đ}") : Eval("GiaBan", "{0:0,00đ}") %>'></asp:Label>
                            <asp:Label ID="Label5" runat="server" CssClass="reducedfrom" Text='<%# Eval("GiaKhuyenMai").ToString().Length > 0 ? Eval("GiaBan", "{0:0,00đ}"): "" %>'></asp:Label>
                        </div>

                        <div id="nsx">
                            <asp:Label ID="Label3" runat="server" Text="Tên Nhà Sản Xuất :"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenNSX") %>'></asp:Label>
                        </div>

                        <div id="mota">
                            <asp:Label ID="lbTT" runat="server" Text="Thông Tin Sản Phẩm : " ></asp:Label>
                            <asp:Label ID="lblMoTa" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                        </div>

                        <div>
                            <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# "~/GioHang.aspx?MaSP="+Eval("MaSP") %>' CssClass="mua">Thêm vào giỏ hàng</asp:HyperLink>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
