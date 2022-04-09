<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="ZaraShop.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/KhachHang.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div style="clear:both; height:20px;"></div>
        <div class="left">
            <ul>
                <li><a href="KhachHang.aspx">Danh sách khách hàng</a></li>                
                <li><a href="DonDatHang.aspx">Đơn đặt hàng</a></li>
            </ul>
        </div>

        <div class="right">
            <div class="head">Danh sách khách hàng</div>
            <div class="khungChuaBang">
                <asp:GridView ID="gvDanhSach" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="MaKH">
                    <Columns>
                        <asp:BoundField DataField="MaKH" HeaderText="Mã KH">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="HoTen" HeaderText="Họ tên khách hàng">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Giới tính">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# (Eval("Gioitinh").ToString())=="True" ? "Nam" :"Nữ" %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"/>
                        </asp:TemplateField>
                        <asp:BoundField DataField="NgaySinh" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày sinh">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SDT" HeaderText="Điện thoại">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
