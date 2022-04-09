<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="ZaraShop.DoiMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Assets/css/doiMK.css" rel="stylesheet" />
    <div class="main">
        <div class="change_pass">
            <div class="container">
	            <div class="head">Đổi mật khẩu</div>
                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="lbTen" runat="server" Text="Tên đăng nhập :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên đăng nhập" ForeColor="Red" ControlToValidate="txtTenDN">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtTenDN" runat="server" ></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="lbMK" runat="server" Text="Mật khẩu cũ :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu cũ" ForeColor="Red" Font-Bold="true" ControlToValidate="txtMatKhau">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="Label1" runat="server" Text="Mật khẩu mới :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu mới" ForeColor="Red" Font-Bold="true" ControlToValidate="txtMatKhauMoi">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMatKhauMoi" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">
                        <asp:Label ID="Label2" runat="server" Text="Nhập lại mật khẩu :"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn chưa nhập lại mật khẩu" ForeColor="Red" Font-Bold="true" ControlToValidate="txtNhapLaiMK">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại chưa đúng" ControlToCompare="txtMatKhauMoi" ControlToValidate="txtNhapLaiMK" ForeColor="Red">*</asp:CompareValidator>
                    </div>
                    <div class="nhap"><asp:TextBox ID="txtNhapLaiMK" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                
                <div class="btnDoiMK">
                    <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" OnClick="btnXacNhan_Click" />
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
                <asp:Label ID="lbTB" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
