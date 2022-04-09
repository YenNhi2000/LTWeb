<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="ChiTietDH.aspx.cs" Inherits="ZaraShop.Admin.ChiTietDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/KhachHang.css" rel="stylesheet" />
    <div class="container">
        <div style="clear:both; height:20px;"></div>
        <div class="left">
            <ul>
                <li><a href="KhachHang.aspx">Danh sách khách hàng</a></li>                
                <li><a href="DonDatHang.aspx">Đơn đặt hàng</a></li>
            </ul>
        </div>

        <div class="right">
            <div class="head">Chi tiết đơn đặt hàng</div>
            <div class="khungChuaBang">
                <asp:GridView ID="gvDanhSach" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="MaHD">
                    <Columns>
                        <asp:BoundField DataField="MaHD" HeaderText="Mã HD">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP">
                            <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
<asp:BoundField DataField="DonGia" HeaderText="Đơn giá" DataFormatString="{0:0,00}">
                        <ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" DataFormatString="{0:0,00}" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
