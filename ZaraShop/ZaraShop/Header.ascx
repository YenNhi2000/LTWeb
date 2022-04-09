<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="ZaraShop.Header" %>
<link href="Assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="Assets/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="Assets/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="Assets/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- dropdown -->
<script src="Assets/js/jquery.easydropdown.js"></script>


<div class="header-top">
	<div class="wrap"> 
		<div class="cssmenu">
			<ul>
				<li class="active">
                    <asp:HyperLink ID="hlDangNhap" runat="server" Font-Underline="False" NavigateUrl="~/DangNhap.aspx">Đăng nhập</asp:HyperLink>
                    <asp:Label ID="lblTenDN" runat="server" ForeColor="White"></asp:Label>
				</li> |
				<li>
                    <asp:HyperLink ID="hlDangKy" runat="server" Font-Underline="False" NavigateUrl="~/DangKy.aspx">Đăng ký</asp:HyperLink>
                    <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
 	</div>
</div>

<div class="header-bottom">
	<div class="wrap">
		<div class="header-bottom-left">
			<div class="logo">
				<asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/images/logo.png" Height="40px" Width="100px" />
			</div>
			<div class="menu">
                <ul class="megamenu skyblue">
                    <li class="active grid"><asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" NavigateUrl="~/TrangChu.aspx">Trang chủ</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" NavigateUrl="~/GioiThieu.aspx">Giới thiệu</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False">Thời trang nữ</asp:HyperLink>
                        <div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Áo</h4>
                                        <ul>
                                            <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=1">Áo thun</asp:HyperLink></li>
                                            <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=2">Áo sơ mi</asp:HyperLink></li>
                                            <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=3">Áo khoác</asp:HyperLink></li>
                                        </ul>	
                                    </div>							
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Quần</h4>
                                        <ul>
                                            <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=4">Quần short</asp:HyperLink></li>
                                            <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=5">Quần dài</asp:HyperLink></li>
                                        </ul>	
                                    </div>							
                                </div>
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>Váy đầm</h4>
                                        <ul>
                                            <li><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=6">Chân váy</asp:HyperLink></li>
                                            <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/SanPham.aspx?MaLoai=7">Đầm</asp:HyperLink></li>
                                        </ul>	
                                    </div>												
                                </div>
                            </div>
                        </div>
                    </li>
				</ul>
			</div>
		</div>
        <div class="header-bottom-right">
            <div class="search">	
                <asp:TextBox ID="txtTimKiem" runat="server" Width="136px" BorderStyle="None"></asp:TextBox>
                <asp:ImageButton ID="btnTimKiem" runat="server" style="margin-bottom:-8px;" ImageUrl="~/Assets/images/search.png" OnClick="btnTimKiem_Click"  />
                <div id="response"> </div>
            </div>
            <div class="tag-list">
                <ul class="icon1 sub-icon1 profile_img">
                    <li><a class="active-icon c2" href="GioHang.aspx"></a></li>
                </ul>
                <ul class="last">
                    <li>
                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" NavigateUrl="~/GioHang.aspx">Giỏ hàng</asp:HyperLink>
                        <asp:Label ID="Label1" runat="server" Text="(0)"></asp:Label>
                    </li>
                </ul>
            </div>
        </div>
     	<div class="clear"></div>
    </div>
</div>