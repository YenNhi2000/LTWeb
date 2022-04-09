<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhapAd.aspx.cs" Inherits="ZaraShop.Admin.DangNhapAd" %>
<link href="css/DangNhapAd.css" rel="stylesheet" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <div class="container">
	            <div class="head">Đăng nhập hệ thống</div>
                <div class="nhap">
                    <asp:Label ID="lbTen" runat="server" Text="Tên đăng nhập :"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="Orange" ControlToValidate="txtTenDN">(*)</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTenDN" runat="server" ></asp:TextBox>
                </div>

                <div class="nhap">
                    <asp:Label ID="lbMK" runat="server" Text="Mật khẩu :"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không được rỗng" ForeColor="Orange" Font-Bold="true" ControlToValidate="txtMatKhau">(*)</asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <div class="forgot">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/DoiMatKhauAd.aspx">Quên mật khẩu ?</asp:HyperLink>
                </div>
                <div class="btnLogin">
                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" />
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Orange"/>
                <asp:Label ID="lbTB" runat="server" ForeColor="Orange"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
