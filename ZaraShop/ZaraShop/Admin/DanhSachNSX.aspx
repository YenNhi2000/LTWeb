<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="DanhSachNSX.aspx.cs" Inherits="ZaraShop.Admin.NhaXuatBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/SanPham.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div style="clear:both; height:20px;"></div>
        <div class="left">
            <ul>
                <li><a href="DanhSachSanPham.aspx">Danh sách sản phẩm</a></li>                
                <li><a href="DanhSachNSX.aspx">Danh sách nhà sản xuất</a></li>
            </ul>
        </div>

        <div class="right">
            <div class="head">Danh sách nhà sản xuất</div>
            <div class="them">
                <asp:HyperLink ID="hplThem" runat="server" NavigateUrl="~/Admin/ThemNSX.aspx">Thêm nhà sản xuất</asp:HyperLink>
            </div>
            <div class="khungChuaBang">
                <asp:GridView ID="gvDanhSach" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="MaNSX" >
                    <Columns>
                        <asp:BoundField DataField="MaNSX" HeaderText="Mã NSX">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenNSX" HeaderText="Tên nhà sản xuất">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ">
                        <ItemStyle Width="450px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SDT" HeaderText="Điện thoại">
                            <ControlStyle Width="40px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/ChinhSuaNSX.aspx?MaNSX=" +Eval("MaNSX") %>'>Sửa</asp:HyperLink>
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
