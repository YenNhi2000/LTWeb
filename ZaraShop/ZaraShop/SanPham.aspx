<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="ZaraShop.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        a{
            color:#777;
        }

        #mid2 {
            margin-left: 50px;
            margin-bottom:15px;
            font-size: 16px;
            color: #777;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Assets/css/style.css" rel="stylesheet" />
    <div class="main">
        <div class="wrap">
            <div id="mid2">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/TrangChu.aspx" Font-Underline="False">Trang chủ</asp:HyperLink>
            &nbsp;/
                <asp:Label ID="lblTenSP" runat="server"></asp:Label>
            </div>
            <asp:DataList ID="dlSanPham" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <div class="col_1_of_3 span_1_of_3"> 
                        <div class="inner_content clearfix">
                            <div class="product_image">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Assets/images/clothes/" + Eval("Hinh") %>' />
                            </div>
                            <div class="price">
                                <div class="cart-left">
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ChiTietSanPham.aspx?MaSP="+Eval("MaSP") %>' Text='<%# Eval("TenSP") %>' Font-Underline="false"></asp:HyperLink>
                                    <div class="price1">
                                        <asp:Label ID="Label2" runat="server" CssClass="actual" Text='<%# Eval("GiaKhuyenMai").ToString().Length > 0 ? Eval("GiaKhuyenMai", "{0:0,00đ}") : Eval("GiaBan", "{0:0,00đ}") %>'></asp:Label>
                                        <asp:Label ID="Label3" runat="server" CssClass="reducedfrom" Text='<%# Eval("GiaKhuyenMai").ToString().Length > 0 ? Eval("GiaBan", "{0:0,00đ}"): "" %>'></asp:Label>
                                    </div>
                                </div>
                                <div>
                                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="cart-right" NavigateUrl='<%# "~/GioHang.aspx?MaSP="+Eval("MaSP") %>'></asp:HyperLink>
                                </div>
                                <div class="clear"></div>
                            </div>				
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>