<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="ZaraShop.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #giuamid{
            margin-left:100px;
            color:#777;
            margin-bottom:25px;
        }

        #giuamid #Label4{
            color:#555;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div id="giuamid">
            <asp:Label ID="Label3" runat="server" Text="Bạn Vừa Tìm Kiếm Từ Khóa: "></asp:Label><asp:Label ID="lblTuKhoa" runat="server" Text="Label"></asp:Label>
        </div>
        <center>
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
                                        <asp:Label ID="Label2" runat="server" CssClass="actual" Text='<%# Eval("GiaBan", "{0:0,00đ}") %>'></asp:Label>
                                        <asp:Label ID="Label3" runat="server" CssClass="reducedfrom" Text='<%# Eval("GiaKhuyenMai", "{0:0,00đ}") %>'></asp:Label>
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
        </center>
    </div>
</asp:Content>
