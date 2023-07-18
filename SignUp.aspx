<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BusinessExplorer.WebForm1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagPrefix="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <%--<link href="css/main.css" rel="stylesheet" />--%>
    
    <style>
        .login100-form-title {
            font-family: Poppins-Bold;
            font-size: 24px;
            color: #333333;
            line-height: 1.2;
            text-align: center;
            width: 100%;
            display: block;
            padding-bottom: 50px;
        }

        .center {
            margin: auto;
            width: 142%;
            padding: 10px;
        }

        .center-page {
            border: 3px black;
            width: 300px;
            /*height: 300px;*/
            /*position: absolute;*/
            top: -40px;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }

        .limiter {
            width: 100%;
            margin: 0 auto;
        }

        .container-login100 {
            width: 100%;
            min-height: 91vh;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
            /*background: #cccccc;
            background: -webkit-linear-gradient(-135deg, #cccccc, #cccccc);
            background: -o-linear-gradient(-135deg, #cccccc, #cccccc);
            background: -moz-linear-gradient(-135deg, #cccccc, #cccccc);
            background: linear-gradient(-135deg, #cccccc, #cccccc);*/
        }

        .wrap-login100 {
            width: 960px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 50px 50px 33px 50px;
        }

        .auto-style1 {
            width: 360px;
        }

        .col-xs-11 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            border: 3px black;
            width: 360px;
            /*height: 300px;*/
            /*position: absolute;*/
            top: -40px;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 60px"></div>
    <div class="limiter">
        <div class="container-login100 w3-light-gray">
            <div class="wrap-login100 w3-card">
                <div class="auto-style2">
                    <h1 class="w3-text-grey w3-center w3-padding-16">Sign Up</h1>
                                                       
                    <label class="col-xs-11">UserName:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtUname" runat="server" class="form-control" placeholder="Enter Your UserName"></asp:TextBox>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <asp:Label ID="lblExist" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>                                
                    </div>
                    

                    <label class="col-xs-11">Password:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" class="form-control" placeholder="Enter Your password"></asp:TextBox>
                        <asp:Panel ID="Panel2" runat="server" Visible="False">
                            <asp:Label ID="lblpwd" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>
                    </div>                    

                    <label class="col-xs-11">Confirm Password:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" class="form-control" placeholder="Confirm Your password"></asp:TextBox>
                        <asp:Panel ID="Panel3" runat="server" Visible="False">
                            <asp:Label ID="lblcpwd" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>
                    </div>
                    
                    <label class="col-xs-11">Full Name:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                        <asp:Panel ID="Panel4" runat="server" Visible="False">
                            <asp:Label ID="lblname" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">Date Of Birth:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtDob" runat="server" class="form-control" placeholder="Enter Your DOB"></asp:TextBox>
                        <AjaxControlToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="CalendarExtender1" 
                            Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txtDob" Enabled="true" ></AjaxControlToolkit:CalendarExtender>
                        <asp:Panel ID="Panel5" runat="server" Visible="False">
                            <asp:Label ID="lbldob" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">Email:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                        <asp:Panel ID="Panel6" runat="server" Visible="False">
                            <asp:Label ID="lblmail" runat="server" Text="Label" style="color: red" Visible="False"></asp:Label>
                        <br />
                        </asp:Panel>
                    </div>

                    
                    <table class="auto-style1">
                        <tr>
                            <td style="text-align: right">
                                <br />
                                <label class="col-xs-11"></label>
                                <div class="col-xs-11">
                                    <asp:Button ID="btnCncl" class="btn btn-default btn-toolbar" runat="server" Text="Cancel" OnClick="btnCncl_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnsignup" class="btn btn-success" runat="server" Text="SignUp" OnClick="btnsignup_Click"/>
                                    <br />                                    
                                </div>
                            </td>
                        </tr>
                    </table>                   
                </div>

                <%--<button onclick="document.getElementById('id01').style.display='block'">Open Modal</button>--%>
                                   
                

            </div>
        </div>
    </div>
    <%--<script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to save data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
    <script>
        function blockDisp() {
            var business = prompt("If you would like to continue registering a business type 'Yes' ", "Yes");
            if (business == "Yes") {
                window.open("BusSignUp.aspx");
            }
            else {
                alert("Registered Successfully");
            }
        }      
    </script>--%>

</asp:Content>


<%--<asp:Content ID="Content3" ContentPlaceHolderID="loginForm" runat="server">
</asp:Content>--%>
