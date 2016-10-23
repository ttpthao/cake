<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="meo.aspx.cs" Inherits="meo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:90px">
    <h1 style="color:#ff0000;font-size:40px;text-align:center;font-weight:bold;text-shadow:1px 1px 2px #ccc;">MẸO VẶT TRONG NẤU ĂN</h1><br />
    <%--load hình ảnh--%>
            <div style="margin-left: 100px">
                <asp:Repeater ID="Repeater_Item" runat="server">
                    <ItemTemplate>
                        <img class="favorite_content2" src='<%#Eval("Hinh") %>' title='<%#Eval("TenHinh") %>' />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

</asp:Content>

