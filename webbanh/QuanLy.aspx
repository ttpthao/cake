<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuanLy.aspx.cs" Inherits="banhkem" %>
<%@Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:300px">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <h1 style="color:#000;font-size:23px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;">DANH SÁCH BÀI VIẾT</h1>
                <div class="row2">
                    <div id = "dvGrid" style ="padding:10px;width:800px;align-content:center">
                        <asp:Label runat="server" Text="Show:" />
                        <asp:DropDownList runat="server" AutoPostBack="true" ID="ddlHienThiDanhMuc" OnSelectedIndexChanged="dbGrid_SelectedIndexChanged">
                            <asp:ListItem Text="All" Value="" />
                            <asp:ListItem Text="Bánh Kem" Value="Bánh Kem" />
                            <asp:ListItem Text="Kem" Value="Kem"/>
                            <asp:ListItem Text="Mẹo Vặt" Value="Mẹo Vặt" />
                        </asp:DropDownList>
                        <asp:GridView ID="GridView1" runat="server"  Width = "800px"
                        AutoGenerateColumns = "false" Font-Names = "Arial"
                        Font-Size = "11pt"  AlternatingRowStyle-BackColor = "#C2D69B" 
                        HeaderStyle-BackColor = "#2980b9" HeaderStyle-Height="30px" AllowPaging ="true"  ShowFooter = "true" 
                        OnPageIndexChanging = "OnPaging"
                        PageSize = "5" >
                        <Columns>
                        <asp:TemplateField ItemStyle-Width="100px" ItemStyle-Height="30px" HeaderText = "Tên Bài">
                            <ItemTemplate>
                                <asp:Label ID="lblTenBai" runat="server"
                                Text='<%# Eval("TenBai")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                  
                        <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Danh Mục">
                            <ItemTemplate>
                                <asp:Label ID="lblDanhMuc" runat="server"
                                        Text='<%# Eval("DanhMuc")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width = "100px"  HeaderText = "Hình Đại Diện">
                            <ItemTemplate>
                                <asp:Label ID="lblHinhDaiDien" runat="server"
                                        Text='<%# Eval("HinhDaiDien")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width = "150px"  HeaderText = "Nội Dung">
                            <ItemTemplate>
                                <asp:Label Visible ="false" ID="lblNoiDung" runat="server"
                                    Text='<%# Eval("NoiDung")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width = "200px"  HeaderText = "Ngày Đăng">
                            <ItemTemplate>
                                <asp:Label ID="lblNgayDang" runat="server"
                                    Text='<%# Eval("NgayDang")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField  ItemStyle-Width = "50px">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkXoa" runat="server"
                                    CommandArgument = '<%# Eval("MaBai")%>'
                                    OnClientClick = "return confirm('Bạn có muốn xóa bài viết này không?')"
                                Text = "Xóa" OnClick = "XoaBaiViet"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField  ItemStyle-Width = "50px">
                            <ItemTemplate>
                                <asp:LinkButton ID="linkSua" runat="server"
                                    CommandArgument = '<%# Eval("MaBai")%>'
                                    OnClientClick = "return confirm('Bạn có muốn sửa bài viết này không?')"
                                Text = "Sửa" OnCommand="LayThongTinBaiViet"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        </Columns>
                        <AlternatingRowStyle BackColor="#C2D69B"  />
                        </asp:GridView>
                
                        <Triggers>
                        <asp:AsyncPostBackTrigger ControlID = "GridView1" />
                        </Triggers>
              
                        </div>
            
                    </div>
                        <div class="col-md-6 col-sm-6 col-xs-12 product">
                        <asp:Label ID="lblMaBaiHidden" runat="server" Visible="false"></asp:Label>
                        <b style="color:#000;font-size:18px;text-align:left;font-weight:bold">Tên Bài Viết:</b> <asp:TextBox ID="txtTenBai" runat="server" Width="400px" Height="30px" Font-Size="18"></asp:TextBox>
                            <br /><br />
                            <b style="color:#000;font-size:18px;text-align:left;font-weight:bold">Danh Mục:</b>
                            <asp:DropDownList ID="ddlDanhMuc" runat="server" Width="400px" Height="30px">
                            <asp:ListItem Text="Chọn Danh Mục" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Bánh Kem" Value="Bánh Kem"></asp:ListItem>
                            <asp:ListItem Text="Kem" Value="Kem"></asp:ListItem>
                                <asp:ListItem Text="Mẹo Vặt" Value="Mẹo Vặt"></asp:ListItem>
                        </asp:DropDownList>
                        </div>
                    <div class="col-md-12 col-sm-6 col-xs-12 product">
                        <CKEditor:CKEditorControl ID="CKEditor1" BasePath="~/ckeditor" runat="server"></CKEditor:CKEditorControl>
                    </div>
                    <div class="col-md-12 col-sm-6 col-xs-12 product">
                        <% if (txtTenBai.Text == ""){ %>
                                <asp:Button ID="btnDangBai" runat="server" Text="Đăng Bài" OnClick="Submit_DangBaiViet" Width ="150px" Height="30px" />
                        <% }
                        else{ %>
                                <asp:Button ID="btnChinhSua" runat="server" Text="Sửa Bài" OnClick="Submit_SuaBaiViet" Width ="150px" Height="30px" />
                        <% } %>
                    </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

