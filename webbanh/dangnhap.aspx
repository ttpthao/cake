<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:1100px;">
        <tr>
            <td colspan="3"><B style="font-size: 30px; color: #FF0000;">ĐĂNG NHẬP </B></td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px; color: #0000FF; font-weight: bold; font-size: 24px;">TÊN ĐĂNG NHẬP<br />
            </td>
            <td class="text-left" style="width: 379px">
                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtten" ErrorMessage="Mời bạn nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px; font-weight: bold; color: #0000FF; font-size: 24px;">MẬT KHẨU<br />
            </td>
            <td class="text-left" style="width: 379px">
                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Bạn cần nhập mật khẩu" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px">&nbsp;</td>
            <td class="text-left" style="width: 379px">
                <asp:Button ID="btnok" runat="server" Text="ĐĂNG NHẬP" OnClick="btnok_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

