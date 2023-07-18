<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusinessExplorer._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", sans-serif
        }

        body, html {
            height: 100%;
            line-height: 1.8;
        }

        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
    <div id="body">
        <div class="w3-content" style="max-width:1600px">

            <!-- Header -->
            <%--<header class="w3-container w3-center w3-padding-48 w3-white">
                <br />
                <h1 class="w3-xxxlarge"><b>Business Explorer</b></h1>
                <h6>Welcome to the new world of&nbsp;<span class="w3-tag">Business Explorer</span></h6>
            </header>--%>

            <!-- Image header -->
            <header class="w3-display-container w3-wide w3-grayscale-min" id="home">
                <img class="w3-image" src="Images/Picture1.jpg" alt="Business Explorer" width="1600" />
                <div class="w3-display-left w3-text-white w3-padding-large">
                    <span class="w3-jumbo w3-hide-small w3-hide-medium">Start something that matters</span><br />
                    <span class="w3-xlarge w3-hide-large">Start something that matters</span><br />
                    <span class="w3-large w3-hide-small w3-hide-medium">Stop wasting valuable time with projects that just isn't you.</span>
                    <span class="w3-small w3-hide-small w3-hide-large">Stop wasting valuable time with projects that just isn't you.</span>
                    <p><a href="About.aspx" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn more and start today</a></p>
                </div>
                <div class="w3-display-bottomleft w3-hide-small w3-hide-medium w3-text-light-gray w3-large" style="padding: 24px 48px">
                    <i class="fa fa-facebook-official w3-hover-opacity"></i>
                    <i class="fa fa-instagram w3-hover-opacity"></i>
                    <i class="fa fa-snapchat w3-hover-opacity"></i>
                    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                    <i class="fa fa-twitter w3-hover-opacity"></i>
                    <i class="fa fa-linkedin w3-hover-opacity"></i>
                </div>
            </header>

        </div>
    </div>
</asp:Content>
