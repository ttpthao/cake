<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 300px; margin-left: 300px">
        <table style="width:auto">
            <tr>
                <td colspan="2" style="padding-bottom: 30px;  text-align: center"><b style="font-size: 30px; color: #FF0000;">ĐĂNG NHẬP </b></td>
            </tr>
            <tr>
                <td class="text-left" style="padding-bottom: 20px;padding-right:10px; color: #0000FF; font-weight: bold; font-size: 18px">Tên Đăng Nhập
                </td>
                <td class="text-left" style="padding-bottom: 20px;padding-right:10px;">
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
                <td style="padding-bottom: 20px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtten" ErrorMessage="Mời bạn nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-left" style="padding-bottom: 20px; font-weight: bold; color: #0000FF; font-size: 18px;">Mật Khẩu
                </td>
                <td class="text-left" style="padding-bottom: 20px;">
                    <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="padding-bottom: 20px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Bạn cần nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-left">&nbsp;</td>
                <td class="text-left">
                    <asp:Button ID="btnok" runat="server" Text="Đăng Nhập" OnClick="btnok_Click" Font-Size="20px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

