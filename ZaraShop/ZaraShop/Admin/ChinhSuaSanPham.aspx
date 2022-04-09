<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="ChinhSuaSanPham.aspx.cs" Inherits="ZaraShop.Admin.ChinhSuaSanPham" %>
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
            <div class="head">Chỉnh sửa sản phẩm</div>
            <div class="form">
                <div class="thongtin">
                    <div class="tenTruong">Tên sản phẩm</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên sản phẩm" ControlToValidate="txtTenSP" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="thongtin">
                    <div class="tenTruong">Hình</div>
                    <div class="nhap"><asp:FileUpload ID="fulHinh" runat="server" /></div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Số lượng</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtSoLuong" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Bạn chưa nhập số lượng sản phẩm" ControlToValidate="txtSoLuong" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Giá bán</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtGiaBan" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn chưa nhập giá của sản phẩm" ControlToValidate="txtGiaBan" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Giá khuyến mãi</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtGiaKM" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Ngày tạo</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtNgayTao" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Mã loại</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMaLoai" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Bạn chưa nhập mã loại sản phẩm" ControlToValidate="txtMaLoai" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">Mã NSX</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMaNSX" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Bạn chưa nhập mã NSX sản phẩm" ControlToValidate="txtMaNSX" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                </div>

                 <div class="thongtin">
                    <div class="tenTruong">Mô tả</div>
                    <div class="nhap">
                        <asp:TextBox ID="txtMoTa" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập mô tả" ControlToValidate="txtMota" ForeColor="Red" Text="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="thongtin">
                    <div class="tenTruong">&nbsp;</div>
                    <div class="nhap">
                        <asp:Button ID="btnSua" runat="server" Text="Chỉnh sửa" CssClass="btnSua"/>
                        <asp:Button ID="btnHuy" runat="server" Text="Hủy" CssClass="btnHuy" CausesValidation="False" />
                    </div>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="False" Width="595px" ForeColor="Red" />
                <asp:Label ID="lbTB" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
