<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="ChinhSuaNSX.aspx.cs" Inherits="ZaraShop.Admin.ChinhSuaNSX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/SanPham.css" rel="stylesheet" />
    <div class="container">
        <div style="clear:both; height:20px;"></div>
        <div class="left">
            <ul>
                <li><a href="DanhSachSanPham.aspx">Danh sách sản phẩm</a></li>                
                <li><a href="DanhSachNSX.aspx">Danh sách nhà sản xuất</a></li>
            </ul>
        </div>

        <div class="right">
            <div class="head">Chỉnh sửa nhà sản xuất</div>
            <div class="form">
                <div class="thongtin">
                    <div class="tenTruong">Tên NSX:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtTenNSX" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên nhà sản xuất" ControlToValidate="txtTenNSX" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="thongtin">
                    <div class="tenTruong">Địa chỉ:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine" Height="80px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập địa chỉ" ControlToValidate="txtDiaChi" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Điện thoại:</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtSdt" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Bạn chưa nhập số điện thoại" ControlToValidate="txtSdt" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">&nbsp;</div>
                    <div class="nhap">
                        <asp:Button ID="btnSua" runat="server" Text="Chỉnh sửa" CssClass="btnSua" OnClick="btnSua_Click" />
                        <asp:Button ID="btnHuy" runat="server" Text="Hủy" CssClass="btnHuy" CausesValidation="False" OnClick="btnHuy_Click" />
                    </div>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="False" Width="595px" ForeColor="Red"/>
                <asp:Label ID="lbTB" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
