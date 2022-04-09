<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZaraShop.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #ContentPlaceHolder1_Label1{
            font-size:35px;
            font-family:'Times New Roman', Times, serif;
            font-weight:bold;
            color:#555;
        }

        .admin{            
            text-align:center;
            margin-top:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin">
        <asp:Label ID="Label1" runat="server" Text="Chào mừng bạn đến với trang quản trị hệ thống"></asp:Label>
    </div>
</asp:Content>
