<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="ZaraShop.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div class="wrap">
			<div class="col_1_of_login span_1_of_login">
                <h4 class="title">Bạn là khách hàng mới</h4>  
				<div class="button1">
                    <asp:Button ID="btnTaoTK" runat="server" Text="Tạo tài khoản" CausesValidation="False" OnClick="btnTaoTK_Click" />
                </div>
				<div class="clear"></div>
			</div>
			<div class="col_1_of_login span_1_of_login">
			    <div class="login-title">
                    <h4 class="title">Đăng nhập</h4>  
				    <div id="loginbox" class="loginbox">
					    <form action="" method="post" name="login" id="login-form">
						    <fieldset class="input">
						        <p id="login-form-username">
                                    <asp:Label ID="Label1" runat="server" Text="Tài khoản "></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tài khoản" ControlToValidate="txtUser" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtUser" runat="server" CssClass="inputbox"></asp:TextBox>
						        </p>
						        <p id="login-form-password">
						            <asp:Label ID="Label2" runat="server" Text="Mật khẩu "></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu" ControlToValidate="txtPass" ForeColor="Red">*</asp:RequiredFieldValidator>
						            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="inputbox"></asp:TextBox>
						        </p>
						        <div class="remember">
							        <p id="login-form-remember">
                                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" ForeColor="#999999" Font-Underline="False" NavigateUrl="~/DoiMatKhau.aspx">Quên mật khẩu ?</asp:HyperLink>
							        </p>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                    <div class="clear"></div>
							    </div>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                <asp:Label ID="lbTB" runat="server"></asp:Label>
						    </fieldset>
                        </form>
				    </div>
			    </div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</asp:Content>
