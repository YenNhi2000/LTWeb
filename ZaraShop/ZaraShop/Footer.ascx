<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="ZaraShop.Footer" %>
<style type="text/css">
    .footer {
        width: 100%;
        height:170px;
        background:#4CB1CA;
        color:white;
        clear:both;
    }
    .footer ul li{
        list-style:none;
    }
    .footer-left {
        float:left;
        padding:0px 100px;
        margin-left:100px;
    }
    .footer-right {
        float:right;
        padding:0px 200px;
    }
    h3{
        font-size:20px;
    }
</style>

<div class="footer">
    <div class="footer-left">
        <ul>
            <h3><asp:Label ID="Label4" runat="server" Font-Bold="True" Text="HỖ TRỢ KHÁCH HÀNG"></asp:Label></h3>
            <li><asp:Label ID="Label1" runat="server" Text="Email:cskh@fashion.vn"></asp:Label></li>
            <li><asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="#">Gửi yêu cầu hỗ trợ, khiếu nại</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="#">Chính sách khách hàng thân thiết</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" ForeColor="White" NavigateUrl="#">Chính sách bảo mật thông tin khách hàng</asp:HyperLink></li>
        </ul>
    </div>

    <div class="footer-right">
        <ul>
            <h3><asp:Label ID="Label5" runat="server" Font-Bold="True" Text="LIÊN HỆ"></asp:Label></h3>
            <li><asp:Label ID="Label6" runat="server" Text="Hotline tư vấn và tiếp nhận khiếu nại: "></asp:Label><asp:Label ID="Label7" runat="server" Font-Bold="True" Text="18001000"></asp:Label></li>
        </ul>
    </div>
</div>