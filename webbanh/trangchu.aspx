<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <!-- Set the first background image using inline CSS below. -->
                    <img src="images/banner_01.jpg" alt="image" class="img-responsive" />
                    <div class="carousel-caption">
                        <h3>Bánh Kem</h3>
                    </div>
                </div>

                <div class="item">
                    <!-- Set the first background image using inline CSS below. -->
                    <img src="images/bannerkem.jpg" alt="image" class="img-responsive" />
                    <div class="carousel-caption">
                        <h3>Kem</h3>
                    </div>
                </div>

                <div class="item">
                    <!-- Set the first background image using inline CSS below. -->
                    <img src="images/Banner_5.jpg" alt="image" class="img-responsive" />
                    <div class="carousel-caption">
                        <h3>Bánh Kem</h3>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

