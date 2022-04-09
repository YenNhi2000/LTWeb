<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="XacNhanDonHang.aspx.cs" Inherits="ZaraShop.XacNhanDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Assets/css/xacnhanDH.css" rel="stylesheet" />
    <div class="main">
        <div id="chu">
            <h1>Zara Shop</h1><br />
            <h2>Bạn vừa đặt hàng thành công!</h2>
            <h3>
                <asp:Label ID="Label1" runat="server" Text="Mã đơn hàng :"></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </h3>
            <p>
                Bộ phận giao hàng sẽ liên lạc với bạn trong thời gian sớm nhất.<br />
                Hãy ủng hộ và mua hàng tiếp khi bạn có nhu cầu.<br />
                Bạn muốn liên lạc với chúng tôi.<br /> Hãy liên hệ qua: 0987442178.<br />
            </p>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TrangChu.aspx" Font-Underline="False"><center>Tiếp Tục Mua</center></asp:HyperLink>
        </div>
    </div>    
</asp:Content>
