<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="ZaraShop.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        .auto-style2 {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register_account">
        <div class="wrap">
    	    <h4 class="title">Đăng ký tài khoản</h4>
    		<form>
    			<div class="col_1_of_login span_1_of_login">
                    <div class="head">Thông tin cá nhân</div>
		   			<div class="thongtin">
                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style1">
                                    <div class="tenTruong">Họ và tên 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập họ và tên" ControlToValidate="txtHoTen" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:TextBox ID="txtHoTen" runat="server" CssClass="input"></asp:TextBox>
                                    </div> 
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><div class="tenTruong">Giới tính</div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:RadioButton ID="rdbNam" runat="server" Checked="True" GroupName="rdbGioiTinh" Text="Nam" />
&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="rdbNu" runat="server" GroupName="rdbGioiTinh" Text="Nữ" />
                                    </div> 
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><div class="tenTruong">Ngày sinh</div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:DropDownList ID="ddlNgaySinh" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                            <asp:ListItem>22</asp:ListItem>
                                            <asp:ListItem>23</asp:ListItem>
                                            <asp:ListItem>24</asp:ListItem>
                                            <asp:ListItem>25</asp:ListItem>
                                            <asp:ListItem>26</asp:ListItem>
                                            <asp:ListItem>27</asp:ListItem>
                                            <asp:ListItem>28</asp:ListItem>
                                            <asp:ListItem>29</asp:ListItem>
                                            <asp:ListItem>30</asp:ListItem>
                                            <asp:ListItem>31</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;&nbsp;&nbsp;Tháng :
                                        <asp:DropDownList ID="ddlThangSinh" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;&nbsp;&nbsp;Năm :
                                        <asp:TextBox ID="txtNamSinh" runat="server" Width="61px" CssClass="input"></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Năm sinh không hợp lệ" MaximumValue="2500" MinimumValue="1900" ControlToValidate="txtNamSinh" ForeColor="Red"> *</asp:RangeValidator>
                                    </div>         
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><div class="tenTruong">Địa chỉ</div></td>
                                <td>
                                    <div class="nhap"><asp:TextBox ID="txtDiaChi" runat="server" CssClass="input"></asp:TextBox></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><div class="tenTruong">Điện thoại</div></td>
                                <td>
                                    <div class="nhap"><asp:TextBox ID="txtSdt" runat="server" CssClass="input"></asp:TextBox></div>  
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1"><div class="tenTruong">Email</div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email không hợp lệ" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                    </div>  
                                </td>
                            </tr>
                        </table>           
		   			</div>
		    	</div>
		    	<div class="col_1_of_login1 span_1_of_login">
                    <div class="head">Thông tin tài khoản</div>
		    	    <div class="thongtin">
                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style2"><div class="tenTruong">Tên đăng nhập 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập tên đăng nhập" ControlToValidate="txtTenDN" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:TextBox ID="txtTenDN" runat="server" CssClass="input"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><div class="tenTruong">Mật khẩu 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:TextBox ID="txtMatKhau" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><div class="tenTruong">Nhập lại mật khẩu 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn chưa nhập lại mật khẩu" ControlToValidate="txtNhapLaiMK" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại không đúng" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMK" ForeColor="Red">*</asp:CompareValidator>
                                    </div></td>
                                <td>
                                    <div class="nhap">
                                        <asp:TextBox ID="txtNhapLaiMK" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" OnClick="btnXacNhan_Click" />
                <p class="terms">Bằng cách nhấp vào Xác nhận, bạn đồng ý với <a href="#">Điều khoản và Điều kiện</a> của chúng tôi.</p>
		        <div class="clear"></div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                <asp:Label ID="lbTB" runat="server" ForeColor="Red"></asp:Label>
		    </form>
    	</div>
    </div>
</asp:Content>
