<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="ZaraShop.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Assets/css/gioithieu.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div id="mid2">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/TrangChu.aspx" Font-Underline="False">Trang chủ</asp:HyperLink>
        &nbsp;/
            <asp:Label ID="lblTenSP" runat="server" Text="Giới thiệu"></asp:Label>
        </div>
    	<h1>Giới thiệu về Zara shop</h1>
        <p>Với khơi nguồn từ lòng đam mê thời trang, khát khao mang đến cái đẹp cho tất cả phụ nữ </p>
        <p>và hơn thế nữa là mong muốn được góp phần tạo dựng hình ảnh mới lạ cho ngành công nghiệp thời trang Việt Nam, </p>
        <p>Fashion đã tập trung đầu tư vào chất lượng và kiểu dáng sản phẩm để thương hiệu Fashion trở thành một cái tên gần gũi hơn với khách hàng.</p>
		<p>Với phương châm "BRIGHTEN YOUR DAY", Fashion mong muốn </p><p>mang lại cho khách hàng những sản phẩm tốt nhất để các bạn không chỉ thể hiện cá tính bản thân mà còn lan toả nguồn năng lượng tích cực, </p><p>mạnh mẽ đến xung quanh.</p>
        <img src="Assets/images/gioiThieu1.png" />
        
        <h1>Đối tượng khách hàng</h1>
        <p>Dù cho bạn là cô nàng mạnh mẽ, độc lập hay nàng thơ nhẹ nhàng, ngọt ngào thì Fashion tin mình có thể đáp ứng nhu cầu mặc đẹp mỗi ngày </p><p>của bạn. Bạn không cần thay đổi phong cách để chạy theo xu hướng, là một quý cô hiện đại, bạn hãy tận dụng thời trang để </p><p>làm mới bản thân và tự mình tạo ra những nguồn năng lượng trẻ trung, tích cực.</p>
        <img src="Assets/images/gioiThieu2.jpg" />
        
        <h3>Còn chần chờ gì nữa, hãy đến với Fashion Shop để trở thành một cô nàng tự tin, yêu bản thân và yêu đời hơn.</h3>

    </div>
</asp:Content>
