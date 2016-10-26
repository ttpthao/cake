<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLy.aspx.cs" Inherits="banhkem" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 300px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h1 style="color: #000; font-size: 23px; text-align: center; font-weight: bold; text-shadow: 1px 1px 2px #ccc;">DANH SÁCH BÀI VIẾT</h1>
                <div class="row2">
                    <div id="dvGrid" style="padding: 10px; width: 800px; align-content: center">
                        <asp:Label runat="server" Text="Danh Mục: " />
                        <asp:DropDownList runat="server" AutoPostBack="true" ID="ddlHienThiDanhMuc" OnSelectedIndexChanged="dbGrid_SelectedIndexChanged" Font-Size="14px">
                            <asp:ListItem Text="Hiển thị tất cả" Value="" />
                            <asp:ListItem Text="Bánh Kem" Value="Bánh Kem" />
                            <asp:ListItem Text="Kem" Value="Kem" />
                            <asp:ListItem Text="Mẹo Vặt" Value="Mẹo Vặt" />
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" Width="800px"
                            AutoGenerateColumns="false" Font-Names="Arial"
                            Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
                            HeaderStyle-BackColor="#2980b9" HeaderStyle-Height="30px" AllowPaging="true" ShowFooter="true"
                            OnPageIndexChanging="OnPaging"
                            PageSize="5">
                            <Columns>
                                <asp:TemplateField ItemStyle-Width="100px" ItemStyle-Height="30px" HeaderText="Tên Bài">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTenBai" runat="server"
                                            Text='<%# Eval("TenBai")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="100px" HeaderText="Danh Mục">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDanhMuc" runat="server"
                                            Text='<%# Eval("DanhMuc")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="100px" HeaderText="Hình Đại Diện">
                                    <ItemTemplate>
                                        <asp:Label ID="lblHinhDaiDien" runat="server"
                                            Text='<%# Eval("HinhDaiDien")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="150px" HeaderText="Nội Dung">
                                    <ItemTemplate>
                                        <asp:Label Visible="false" ID="lblNoiDung" runat="server"
                                            Text='<%# Eval("NoiDung")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="200px" HeaderText="Ngày Đăng">
                                    <ItemTemplate>
                                        <asp:Label ID="lblNgayDang" runat="server"
                                            Text='<%# Eval("NgayDang")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="50px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkXoa" runat="server"
                                            CommandArgument='<%# Eval("MaBai")%>'
                                            OnClientClick="return confirm('Bạn có muốn xóa bài viết này không?')"
                                            Text="Xóa" OnClick="XoaBaiViet"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField ItemStyle-Width="50px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkSua" runat="server"
                                            CommandArgument='<%# Eval("MaBai")%>'
                                            OnClientClick="return confirm('Bạn có muốn sửa bài viết này không?')"
                                            Text="Sửa" OnCommand="LayThongTinBaiViet"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <AlternatingRowStyle BackColor="#C2D69B" />
                        </asp:GridView>

                        <triggers>
                        <asp:AsyncPostBackTrigger ControlID = "GridView1" />
                        </triggers>

                    </div>

                </div>
                <asp:Label ID="lblMaBaiHidden" runat="server" Visible="false"></asp:Label>
                <div class="col-md-12 col-sm-6 col-xs-12 product">
                    <table>
                        <tr>
                            <td style="padding-right: 10px;text-align: left;padding-bottom:20px "><b style="color: #000; font-size: 18px;font-weight: bold">Tên Bài Viết </b></td>
                            <td style="text-align: right;padding-bottom:20px">
                                <asp:TextBox ID="txtTenBai" runat="server" Width="400px" Height="30px" Font-Size="18"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="text-align: left;padding-bottom:20px "><b style="color: #000; font-size: 18px; font-weight: bold">Danh Mục</b></td>
                            <td style="padding-bottom:20px">
                                <asp:DropDownList ID="ddlDanhMuc" runat="server" Width="400px" Height="30px">
                                    <asp:ListItem Text="Chọn Danh Mục" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Bánh Kem" Value="Bánh Kem"></asp:ListItem>
                                    <asp:ListItem Text="Kem" Value="Kem"></asp:ListItem>
                                    <asp:ListItem Text="Mẹo Vặt" Value="Mẹo Vặt"></asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="text-align: left; padding-bottom:20px; padding-right: 20px"><b style="color: #000; font-size: 18px; font-weight: bold">Hình Đại Diện</b></td>
                            <td style="padding-bottom:20px"><asp:FileUpload ID="fulHinhDaiDien" runat="server" Width="398px" /></td>
                        </tr>
                        <tr>
                            <td style="text-align: left; "><b style="color: #000; font-size: 18px; font-weight: bold">Nội Dung</b></td>
                        </tr>
                    </table>
                </div>
                <div >
                    <CKEditor:CKEditorControl ID="CKEditor1" BasePath="~/ckeditor" runat="server"></CKEditor:CKEditorControl>
                </div>
                <div class="col-md-12 col-sm-6 col-xs-12 product">
                    <% if (txtTenBai.Text == "")
                        { %>
                    <asp:Button ID="btnDangBai" runat="server" Text="Đăng Bài" OnClick="Submit_DangBaiViet" Width="150px" Height="30px" />
                    <% }
                        else
                        { %>
                    <asp:Button ID="btnChinhSua" runat="server" Text="Sửa Bài" OnClick="Submit_SuaBaiViet" Width="150px" Height="30px" />
                    <% } %>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

