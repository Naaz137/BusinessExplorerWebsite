<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBus.aspx.cs" Inherits="BusinessExplorer.ViewBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .center {
            margin-left: auto;
            margin-right: auto;
        }

        .limiter {
            width: 100%;
            margin: 0 auto;
        }

        a:hover {
            color: blue;
        }

        .container-login100 {
            width: 100%;
            /*min-height: 91vh;*/
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
            background: #f2f2f2;
            background: -webkit-linear-gradient(-135deg, #f2f2f2, #f2f2f2);
            background: -o-linear-gradient(-135deg, #f2f2f2, #f2f2f2);
            background: -moz-linear-gradient(-135deg, #f2f2f2, #f2f2f2);
            background: linear-gradient(-135deg, #f2f2f2, #f2f2f2);
        }     
    </style>
    <style>
        .likebutton {
            color: #888;
            font-size: 1.5em;
            font-family: 'Heebo', sans-serif;
            background-color: transparent;
            border: 0.1em solid;
            border-radius: 1em;
            padding: 0.333em 1em 0.25em;
            line-height: 1.2em;
            box-shadow: 0 0.25em 1em -0.25em;
            cursor: pointer;
            transition: color 150ms ease-in-out, background-color 150ms ease-in-out, transform 150ms ease-in-out;
            outline: 0;
            margin: 5em 0;
        }

        likebutton:hover {
            color: indianred;
        }

        likebutton:active {
            transform: scale(0.95);
        }

        likebutton.selected {
            color: #FFF;
            background-color: indianred;
            border-color: indianred;
        }

        .heart-icon {
            display: inline-block;
            fill: currentColor;
            width: 0.8em;
            height: 0.8em;
            margin-right: 0.2em;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 63px"></div>
    <div class="limiter">
        <div class="container-login100">
            <div class="w3-card w3-round w3-white center" style="width: 90%">
                <div style="padding-left: 150px; padding-right: 50px">
                    <div style="height: 38px"></div>

                    <table>
                        <tr>
                            <td style="width: 780px">
                                <h1 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>
                                    <asp:Label ID="lblbusName" runat="server"></asp:Label></h1>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>
                                        <asp:Label ID="busType" runat="server"></asp:Label></b></h5>
                                    <p>
                                        <asp:Label ID="busDesc" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                </div>
                                <div>
                                   <%--<svg class="heart-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
                                        <path d="M91.6 13A28.7 28.7 0 0 0 51 13l-1 1-1-1A28.7 28.7 0 0 0 8.4 53.8l1 1L50 95.3l40.5-40.6 1-1a28.6 28.6 0 0 0 0-40.6z" />
                                    </svg>--%>
                                    <asp:Button runat="server" Text=" Like 🖤" ID="likebutton" OnClick="likebutton_Click" OnClientClick="like()"></asp:Button>&nbsp;&nbsp;
                                    <span style="font-size:20px"><asp:Label ID="lblCount" runat="server"></asp:Label></span>
                                </div>
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td rowspan="3">
                                <div class="w3-white w3-card">
                                    <div class="w3-container  w3-center">
                                        <h1 class="w3-text-grey w3-padding-16">Owner</h1>
                                    </div>
                                    <div class="w3-display-container w3-center">
                                        <img src="Images/profile.png" class="w3-circle" style="width: 60%" alt="Avatar" />
                                    </div>
                                    <br />
                                    <div class="w3-container">
                                        <table class="center">
                                            <tr>
                                                <td class="auto-style3">
                                                    <p>
                                                        <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><b>Name</b>
                                                    </p>
                                                    <p>
                                                        <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i><b>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
                                                    </p>
                                                    <p>
                                                        <i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i><b>Email</b>
                                                    </p>
                                                </td>
                                                <td class="auto-style3">
                                                    <br />
                                                    <p>
                                                        <asp:Label ID="lblEname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                    </p>
                                                    <p>
                                                        <asp:Label ID="lblEuname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                    </p>
                                                    <p>
                                                        <asp:Label ID="lblEmail" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                    </p>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <h2 class="w3-text-grey w3-padding-16">
                                    <i class="fa fa-address-book fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>Reach Us At</h2>
                                <div class="w3-container">
                                    <table>
                                        <tr>
                                            <td>
                                                <h5 class="w3-opacity"><b>E-mail </b></h5>
                                                <h5 class="w3-opacity"><b>Phone </b></h5>
                                                <h5 class="w3-opacity"><b>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></h5>
                                            </td>
                                            <td style="line-height: 30px">
                                                <asp:Label ID="busEmail" runat="server"></asp:Label><br />
                                                <asp:Label ID="busPhn" runat="server"></asp:Label><br />
                                                <asp:Label ID="busAdd" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                                <%--<div class="w3-container">
                                    <h5 class="w3-opacity"><b>E-mail </b>
                                        <asp:Label ID="busEmail" runat="server"></asp:Label>
                                    </h5>
                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Phone </b>
                                        <asp:Label ID="busPhn" runat="server"></asp:Label>
                                    </h5>
                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Address </b>
                                        <asp:Label ID="busAdd" runat="server"></asp:Label>
                                    </h5>
                                    <br />
                                </div>--%>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </div>
        </div>
    </div>

    <script>
        function like() {
            document.addEventListener('DOMContentLoaded', function () {
                var likeButton = document.getElementById('like-button');
                likeButton.addEventListener('click', function () {
                    window.lb = likeButton;
                    likeButton.classList.toggle('selected');
                });
            }, false);
        }
    </script>

    <%--<div style="height: 60px"></div>
    <div class="limiter">
        <div class="container-login100">

            <div class="w3-light-grey">
                <!-- Page Container -->
                <div class="w3-content w3-margin-top" style="max-width: 1400px;">

                    <!-- The Grid -->
                    <div class="w3-row-padding">

                        <!-- Left Column -->
                        <div class="w3-third">

                            <div class="w3-white w3-text-grey w3-card-4">
                                <div class="w3-container  w3-center">
                                    <h1 class="w3-text-grey w3-padding-16">Owner</h1>
                                </div>
                                <div class="w3-display-container w3-center">
                                    <img src="Images/profile.png" class="w3-circle" style="width: 60%" alt="Avatar" />
                                    <hr />
                                </div>
                                <div class="w3-container">
                                    <table>
                                        <tr>
                                            <td class="auto-style3">
                                                <p>
                                                    <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><b>Name</b>
                                                </p>
                                                <p>
                                                    <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i><b>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
                                                </p>
                                                <p>
                                                    <i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i><b>Email</b>
                                                </p>
                                            </td>
                                            <td class="auto-style3">
                                                <p>
                                                    <asp:Label ID="lblEname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <asp:Label ID="lblEuname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <asp:Label ID="lblEmail" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <br />

                            <!-- End Left Column -->
                        </div>
                        <!-- Right Column -->
                        <div class="w3-twothird">

                            <div class="w3-container w3-card w3-white w3-margin-bottom" style="width: 907px">
                                <h1 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>
                                    <asp:Label ID="lblbusName" runat="server"></asp:Label></h1>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>
                                        <asp:Label ID="busType" runat="server"></asp:Label></b></h5>
                                    <p>
                                        <asp:Label ID="busDesc" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                    <br />
                                </div>
                            </div>

                            <div class="w3-container w3-card w3-white w3-margin-bottom">
                                <h2 class="w3-text-grey w3-padding-16">
                                    <i class="fa fa-address-book fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>Reach Us At</h2>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>E-mail</b></h5>
                                    <p>
                                        <asp:Label ID="busEmail" runat="server"></asp:Label>
                                    </p>
                                    <hr />

                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Phone</b></h5>
                                    <p>
                                        <asp:Label ID="busPhn" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Address</b></h5>
                                    <p>
                                        <asp:Label ID="busAdd" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

</asp:Content>
