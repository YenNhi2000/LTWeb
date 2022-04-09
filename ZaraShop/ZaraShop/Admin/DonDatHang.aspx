<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="ZaraShop.Admin.DonDatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </style>
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
            <div class="head">Danh sách đơn đặt hàng</div>
            <div class="khungChuaBang">
                <asp:GridView ID="gvDanhSach" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="MaHD">
                    <Columns>
                        <asp:BoundField DataField="MaHD" HeaderText="Mã HD">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MaKH" HeaderText="Mã KH">
                            <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NgayDat" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày đặt">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
<asp:BoundField DataField="NgayGiao" HeaderText="Ngày giao" DataFormatString="{0:dd/MM/yyyy}">
                        <ItemStyle HorizontalAlign="Center" />
</asp:BoundField>
                        <asp:BoundField DataField="TenNguoiNhan" HeaderText="Tên người nhận" />
                        <asp:BoundField DataField="DiaChiNhan" HeaderText="Địa chỉ nhận">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SDT" HeaderText="Điện thoại">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" DataFormatString="{0:0,00}" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="HTTT">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("HinhThucTT") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"/>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="HTGH">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("HinhThucGH") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/ChiTietDH.aspx?MaHD="+Eval("MaHD") %>'>Xem</asp:HyperLink>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
