<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhauAd.aspx.cs" Inherits="ZaraShop.Admin.DoiMatKhauAd" %>

<link href="css/DoiMKAd1.css" rel="stylesheet" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="change_pass">
            <div class="container">
	            <div class="head">Đổi mật khẩu</div>
                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="lbTen" runat="server" Text="Tên đăng nhập :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên đăng nhập" ForeColor="Orange" ControlToValidate="txtTenDN">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtTenDN" runat="server" ></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="lbMK" runat="server" Text="Mật khẩu cũ :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu cũ" ForeColor="Orange" Font-Bold="true" ControlToValidate="txtMatKhau">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="Label1" runat="server" Text="Mật khẩu mới :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu mới" ForeColor="Orange" Font-Bold="true" ControlToValidate="txtMatKhauMoi">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="Label2" runat="server" Text="Nhập lại mật khẩu :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn chưa nhập lại mật khẩu" ForeColor="Orange" Font-Bold="true" ControlToValidate="txtNhapLaiMK">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại chưa đúng" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMK" ForeColor="Orange">*</asp:CompareValidator>
                    </div>
                    <div class="nhap"><asp:TextBox ID="txtNhapLaiMK" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                
                <div class="btnDoiMK">
                    <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" OnClick="btnXacNhan_Click" />
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Orange"/>
                <asp:Label ID="lbTB" runat="server" ForeColor="Orange"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
