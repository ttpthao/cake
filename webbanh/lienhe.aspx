<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container" style="margin-top: 250px">
        <div class="row" style="background-color: #fff; border: thin #d9d9d9 solid; margin: 0px">
            <div class="col-md-6">
                <div style="margin-top: 20px">
                    <%--<h2>Bản đồ chỉ đường</h2>--%>
                    <div class="row" style="margin: 20px 0px;">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1383.3522133864426!2d106.37778920107918!3d11.282647384171753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174b81aa81bce9f%3A0xd493d1e36474a691!2zxJDGsOG7nW5nIHThu4luaCA3NTAsIHR0LiBE4bqndSBUaeG6v25nLCBE4bqndSBUaeG6v25nLCBCw6xuaCBExrDGoW5nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1476002165896" width="100%" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin-bottom: 20px">
                <div class="content">
                    <table class="col_left_contact">
                        <tr>
                            <td colspan="2" style="padding-top: 30px; padding-bottom: 20px; text-align: center; color: #ff0000; font-weight: bold; font-size: 24px">LIÊN HỆ</td>
                        </tr>
                        <tr>
                            <td style="padding-bottom: 15px; text-align: left; color: #1d4df2; font-weight: bold; font-size: 18px">Họ Tên</td>
                            <td style="padding-bottom: 15px; padding-left: 10px">
                                <asp:TextBox ID="txtten" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="padding-bottom: 15px; text-align: left; color: #1d4df2; font-weight: bold; font-size: 18px">Điện Thoại</td>
                            <td style="padding-bottom: 15px; padding-left: 10px">
                                <asp:TextBox ID="txtphone" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="padding-bottom: 15px; text-align: left; color: #1d4df2; font-weight: bold; font-size: 18px">Nội Dung</td>
                            <td style="padding-bottom: 15px; padding-left: 10px">
                                <asp:TextBox ID="txtnoidung" runat="server" Height="133px" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="padding-left: 20px">
                                <asp:Button ID="btngui" runat="server" OnClick="btngui_Click" Text="Gửi" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

