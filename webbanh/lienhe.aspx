<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-top:250px">
        <div class="row" style="background-color:#fff;border:thin #d9d9d9 solid;margin:0px">
            <div class="col-md-12">
                <div style="margin-top:20px">
                    <h2>Bản đồ chỉ đường</h2>
                    <div class="row" style="margin:20px 0px;">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1383.3522133864426!2d106.37778920107918!3d11.282647384171753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174b81aa81bce9f%3A0xd493d1e36474a691!2zxJDGsOG7nW5nIHThu4luaCA3NTAsIHR0LiBE4bqndSBUaeG6v25nLCBE4bqndSBUaeG6v25nLCBCw6xuaCBExrDGoW5nLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1476002165896" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin-bottom:20px">
                <div class="content">
                    <div class="col_left_contact">
                        <h3 style="margin: 40px 0px 20px 0px;text-align:center;color:#ff0000;font-weight:bold;font-size:30px">LIÊN HỆ VỚI CHÚNG TÔI</h3>
                        <div class="form_contact">
                            <div class="row">
                                <div class="col col_1 hidden-xs">
                                    <p style="text-align:left;color:#1d4df2;font-weight:bold;font-size:24px" >Họ và tên:&nbsp;&nbsp;<asp:TextBox ID="txtten" runat="server" Width="273px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtten" ErrorMessage="Bạn cần nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col col_1 hidden-xs">
                                    <p style="text-align:left;color:#1d4df2;font-weight:bold;font-size:24px">Số Điện thoại:
                                    &nbsp;<asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="Bạn cần nhập điện thoại" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                                    </p>
                                </div>
                            </div>
                             <br />
                            <div class="row">
                                <div class="col col_1 hidden-xs">
                                    <p style="text-align:left;color:#1d4df2;font-weight:bold;font-size:24px">Nội dung:
                                    &nbsp;<asp:TextBox ID="txtnoidung" runat="server" Height="133px" TextMode="MultiLine" Width="286px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="Nhập tin nhắn" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col col_2" style="text-align: center">
                                    &nbsp;<asp:Button ID="btngui" runat="server" OnClick="btngui_Click" Text="Gửi" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-3">
            </div>
        </div>
    </div>
</asp:Content>

