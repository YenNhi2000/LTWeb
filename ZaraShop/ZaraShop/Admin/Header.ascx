<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="ZaraShop.Admin.Header" %>
<link href="css/styleAd.css" rel="stylesheet" />

<div>
    <div id="header">
        <div class="container">
            <div class="logo">
                <img src="../Assets/images/logo.png" />
            </div>
            <div class="account">
                Xin chào : <asp:Literal ID="ltrTenDN" runat="server"></asp:Literal> | <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="menu">
        <div class="container">
            <ul>
                <li><a href="Admin.aspx">Trang chủ</a></li>
                <li><a href="DanhSachSanPham.aspx">Quản lý sản phẩm</a></li>
                <li><a href="KhachHang.aspx">Quản lý khách hàng</a></li>
            </ul>   
        </div>
    </div>
</div>