<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="DanhSachSanPham.aspx.cs" Inherits="ZaraShop.Admin.DanhMucSanPham" %>
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
            <div class="head">Danh sách sản phẩm</div>
            <div class="them">
                <asp:HyperLink ID="hplThem" runat="server" NavigateUrl="~/Admin/ThemSanPham.aspx">Thêm sản phẩm</asp:HyperLink>
            </div>
            <div class="khungChuaBang">
                <asp:GridView ID="gvDanhSach" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="MaSP">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Hình">
                            <ItemTemplate>
                                <div class="cotHinh">
                                    <asp:Image ID="Image" class="hinh" runat="server" ImageUrl='<%# "~/Assets/images/clothes/"+Eval("Hinh") %>' />
                                    <asp:Image ID="Image1" class="hinhHover" runat="server" ImageUrl='<%# "~/Assets/images/clothes/"+Eval("Hinh") %>' />
                                </div>
                            </ItemTemplate>
                            <ControlStyle Width="80px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center"/>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GiaBan" DataFormatString="{0:0,00}" HeaderText="Giá bán">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GiaKhuyenMai" DataFormatString="{0:0,00}" HeaderText="Giá KM">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NgayTao" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày tạo">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MaLoai" HeaderText="Mã loại">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MaNSX" HeaderText="Mã NSX">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ButtonField ButtonType="Image" CommandName="Xoa" ImageUrl="~/Admin/images/delete.jpg">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/ChinhSuaSanPham.aspx?MaSP="+Eval("MaSP") %>' Text="Sửa"></asp:HyperLink>
                            </ItemTemplate>
                            <ControlStyle Width="50px" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="lbBaoLoi" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>