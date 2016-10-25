<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BanhKem.aspx.cs" Inherits="banhkem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:300px">
        <h1 style="color:#000;font-size:23px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;">DANH SÁCH BÁNH ĐẶC BIỆT</h1>
        <div class="row">

           <asp:DataList ID="DataList1" runat="server" DataKeyField="MaBai" RepeatColumns="4">
            <ItemTemplate>
                <table class="auto-style2" style="width:250px">
                    <tr>
                     <td>
                        <div class="product">
                            <article>
                                <div class="product-img product-fix hoverimage">
                                    <a href="#"><img src="images/banh-Matcha1.jpg" alt="" /></a>
                                </div>
                                <div class="product-content">
                                    <p class="product-name">
                                        <asp:Label ID="lblTenBai" runat="server" Text='<%# Eval("TenBai") %>'></asp:Label>
                            
                                    </p>

                                    <p class="gia">
                                        <a class="btn-xem" href="#">Chi tiết</a>
                                    </p>
                                </div>
                            </article>
                         </div>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

           
            <div class="col-md-10 col-md-offset-1">
            <h1 style=" color:#000;font-size:23px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;">VIDEO HƯỚNG DẪN</h1>
            <div class="product">
                <div style="margin-bottom:20px">
                    <iframe width="700" height="300" src="https://www.youtube.com/embed/mO6G5UfI-pM" frameborder="0" allowfullscreen></iframe>
                </div>
                
            </div>
        </div>
    </div>
        </div><br />
</asp:Content>

