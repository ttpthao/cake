<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap1.aspx.cs" Inherits="dangnhap1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:1100px; caption-side: inherit; vertical-align: middle; text-align: center; style="margin-top:90px">
        <tr>
            <td colspan="3"><B style="font-size: 30px; color: #FF0000;">ĐĂNG KÝ </B></td>
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
                <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Bạn cần nhập mật khẩu" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px; font-size: 24px; font-weight: bold; color: #0000FF;">NHẬP LẠI MẬT KHẨU<br />
            </td>
            <td class="text-left" style="width: 379px">
                <asp:TextBox ID="txtnhaplai" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" ErrorMessage="Mật khẩu không trùng khớp" ForeColor="#FF0066"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px; font-size: 24px; font-weight: bold; color: #0000FF;">EMAIL<br />
            </td>
            <td class="text-left" style="width: 379px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="không đúng kiểu Email" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 293px">&nbsp;</td>
            <td class="text-left" style="width: 379px">
                <asp:Button ID="btnok" runat="server" Text="ĐĂNG KÝ" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

