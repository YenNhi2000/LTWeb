<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="ZaraShop.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style2 {
            width: auto;
        }
        .auto-style3 {
            width: 486px;
        }
        .auto-style4 {
            width: 726px;
            text-align: right;
        }
        .auto-style5 {
            width: auto;
            text-align: center;
        }
        .auto-style10 {
            width: 726px;
            text-align: left;
        }
        .auto-style11 {
            width: 719px;
            text-align: center;
        }
        .auto-style12 {
            width: 715px;
            text-align: center;
        }
        .auto-style13 {
            width: 101px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Assets/css/giohang.css" rel="stylesheet" />
    <div class="main">
        <div id="mid2">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/TrangChu.aspx" Font-Underline="False">Trang chủ</asp:HyperLink>
        &nbsp;/
            <asp:Label ID="lblTenTrang" runat="server" Text="Giỏ hàng của bạn"></asp:Label>
        </div>
        <div class="container">
            <table >
                <tr>
                    <td class="auto-style2" colspan="5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="95%" DataKeyNames="MaSP" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="Mã SP" >
                                <HeaderStyle Height="35px" HorizontalAlign="Center" VerticalAlign="Bottom" />
                                <ItemStyle HorizontalAlign="Center" Height="25px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm">
                                <HeaderStyle VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Giá Sản Phẩm">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaBan", "{0:0,00đ}") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Số Lượng">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtSoLuong" runat="server" Height="16px" Width="74px" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                                    </ItemTemplate>
                                    <HeaderStyle VerticalAlign="Middle" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" >
                                <HeaderStyle VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ButtonField ButtonType="Image" HeaderText="Xóa" ImageUrl="~/Admin/images/delete.jpg" CommandName="Xoa" >
                                <HeaderStyle VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:ButtonField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#dfdfdf" Font-Bold="True" ForeColor="black" />
                            <HeaderStyle BackColor="#dfdfdf" Font-Bold="True" ForeColor="black" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style3">
                        <div class="auto-style7">
                            <center style="font-weight:bold; font-size:18px; margin-top:20px">Thông Tin Đơn Đặt Hàng</center>
                            <p class="head">Thông Tin Tài Khoản</p>
                            <table class="tbThongTinTK">
                                <tr>
                                    <td>Họ và Tên :</td>
                                    <td>
                                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Địa Chỉ :</td>
                                    <td>
                                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Điện Thoại :</td>
                                    <td>
                                        <asp:TextBox ID="txtSdt" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email :</td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                            <p class="head">Thông Tin Giao Hàng</p>
                            <table class="tbThongTinGH">
                                <tr>
                                    <td class="auto-style13">Ngày Giao :</td>
                                    <td>
                                        <asp:Calendar ID="CalNgayGiao" runat="server"></asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Người Nhận :</td>
                                    <td>
                                        <asp:TextBox ID="txtNguoiNhan" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Địa Chỉ :</td>
                                    <td>
                                        <asp:TextBox ID="txtDCgiao" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Điện Thoại :</td>
                                    <td>
                                        <asp:TextBox ID="txtSdtNhan" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Hình Thức Thanh Toán :</td>
                                    <td class="radio">
                                        <asp:RadioButtonList ID="rdtt" runat="server">
                                            <asp:ListItem Value="0">Thanh Toán Trước Khi Giao Hàng</asp:ListItem>
                                            <asp:ListItem Value="1">Thanh Toán Sau Khi Giao Hàng</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">Hình Thức Giao Hàng :</td>
                                    <td class="radio">
                                        <asp:RadioButtonList ID="rdgiao" runat="server" Width="221px">
                                            <asp:ListItem Value="0">Giao Trực Tiếp</asp:ListItem>
                                            <asp:ListItem Value="1">Chuyển Giao</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style13">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnDongY" runat="server" Text="Đồng ý" style="width:180px; background: #4CB1CA; color:#FFF; font-size:18px" OnClick="btnDongY_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="txt-rt" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style4" colspan="2">
                        <asp:Label ID="Label4" runat="server" Text="Tổng tiền :" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        &nbsp;&nbsp;
                        <asp:Label ID="lblTien" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="btnTiepTuc" runat="server" Text="Tiếp Tục Mua" OnClick="btnTiepTuc_Click" />
                    </td>
                    <td class="auto-style11" colspan="2">
                        <asp:Button ID="btnXoaGH" runat="server" Text="Xóa Giỏ Hàng" OnClick="btnXoaGH_Click" />
                    </td>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnCapNhat" runat="server" Text="Cập Nhật" OnClick="btnCapNhat_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbloi" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style11" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style5" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>