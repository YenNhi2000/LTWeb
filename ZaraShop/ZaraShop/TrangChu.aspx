<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ZaraShop.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Assets/css/fwslider.css" rel="stylesheet" />
    <script src="Assets/js/jquery-ui.min.js"></script>
    <script src="Assets/js/css3-mediaqueries.js"></script>
    <script src="Assets/js/fwslider.js"></script>
    <div id="fwslider">
        <div class="slider_container">
            <div class="slide">
                <img src="Assets/images/banner1.png" />
            </div>
            <div class="slide">
                <img src="Assets/images/banner2.png" />
            </div>
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
    </div>

    <div class="main">
        <div class="wrap">
            <asp:DataList ID="dlSanPham" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <div class="col_1_of_3 span_1_of_3"> 
                        <div class="inner_content clearfix">
                            <div class="product_image">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Assets/images/clothes/" + Eval("Hinh") %>' />
                            </div>
                            <div class="price">
                                <div class="cart-left">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenSP") %>' NavigateUrl='<%# "~/ChiTietSanPham.aspx?MaSP="+Eval("MaSP") %>' Font-Underline="false"></asp:HyperLink>
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
