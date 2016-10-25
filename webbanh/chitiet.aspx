<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitiet.aspx.cs" Inherits="chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container" style="background-color:#fff;">
        <% if (Request.QueryString["mabai"] == "" || Request.QueryString["mabai"] == null)
            { %>
                <div class="col-md-12 col-md-offset-1">
                    <h1 style="color:#ff0000;font-size:40px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;"><asp:Label ID="Label1" runat="server">Lỗi !! Bài Không Tồn Tại</asp:Label></h1>
                </div>
         <% } else { %>

        <div class="col-md-8">
            <img src="images/b.gif" style="width: 680px; height:200px; margin: 20px 40px; float: left "/>
            <h1 style="color:#ff0000;font-size:40px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;"><asp:Label ID="lblTenBai" runat="server"></asp:Label></h1>
            <p style="font-size:28px;text-align:justify;text-shadow:1px 1px 2px #ccc;">
                    <asp:Label ID="lblNoiDung" runat="server"></asp:Label>
            </p>
        </div>

        <div class="col-md-3 col-md-offset-1">
            <h1 style="color:#000;font-size:23px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;">MẪU BÁNH MỚI</h1>
            <div class="product">
                <div style="margin-bottom:20px">
                    <iframe width="255" height="200" src="https://www.youtube.com/embed/mO6G5UfI-pM" frameborder="0" allowfullscreen></iframe>
                </div>
                <div class="hoverimage product-fix">
                    <img src="images/20.jpg" width="255"/>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>