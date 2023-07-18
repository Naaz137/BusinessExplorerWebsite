<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="BusinessExplorer.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Login Page</title> 
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
<!--===============================================================================================-->


    <style>
        body, a, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", sans-serif
        }

        body, html {
            height: 100%;
            line-height: 1.8;
        }

        /* Full height image header */
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("/w3images/mac.jpg");
            min-height: 100%;
        }

        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 63px"></div>
    <div class="limiter">
        <div class="container-login100 w3-light-gray">
            <div class="wrap-login100 w3-card">
                <div class="login100-pic js-tilt" data-tilt="">
                    <img src="Images/images/img-01.png" alt="IMG" />
                </div>

                <div class="login100-form validate-form">
                    <span class="login100-form-title">Login
                    </span>

                    <div class="validate-input" data-validate="Valid username is required">
                        <!--<input class="input100" type="text" name="txtuname" placeholder="UserName" />-->
                        <asp:TextBox ID="txtuname" runat="server" class="input100" placeholder="UserName"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100"></div>
                    <div class="validate-input" data-validate="Password is required">
                        <!--<input class="input100" type="password" name="txtpass" placeholder="Password" />-->
                        <asp:TextBox ID="txtpass" runat="server" class="input100" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button runat="server" class="login100-form-btn" OnClick="btnlogin_Click" Text="Login"></asp:Button>
                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">Forgot
                        </span>
                        <a class="txt2" href="#"> Username / Password?
                        </a>
                    </div>
                    <div>
                        <hr />
                    </div>
                    <div class=" text-center">
                        <label>New To Business Explorer?</label>
                        <a class="txt2 btn" href="SignUp.aspx">
                            <h4>&nbsp;&nbsp;&nbsp;Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></h4>
                        </a>
                    </div>
                </div>
            </div>

            <%--<div class="wrap-login100">
                <div class="text-center">
                    <label>New To Business Explorer?</label>&nbsp;&nbsp;&nbsp;
                    <a class="txt2 btn" style="border-color: lightgrey; background-color: cornflowerblue; color: white" href="#">
                        <h4>&nbsp;&nbsp;&nbsp;Create your Account<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></h4>
                    </a>
                </div>
            </div>--%>
        </div>
    </div>


    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
</asp:Content>

