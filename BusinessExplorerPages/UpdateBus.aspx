<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateBus.aspx.cs" Inherits="BusinessExplorer.UpdateBus" %>

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
            width: 480px;
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

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 60px"></div>
    <div class="limiter">
        <div class="container-login100 w3-light-gray">
            <div class="wrap-login100 w3-container w3-card">
                <div class="auto-style1 center">
                    <br />
                    <h1 class="w3-text-grey w3-center w3-padding-16">Update Your Details</h1>

                    <label class="col-xs-11">Name Of The Business:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtBusname" runat="server" class="form-control" placeholder="Enter The Name Of Your Business"></asp:TextBox>
                        <asp:Panel ID="pnlname" runat="server" Visible="False">
                            <asp:Label ID="lblname" runat="server" Text="Label" Style="color: red"></asp:Label>
                            <br />
                        </asp:Panel>
                    </div>


                    <label class="col-xs-11">Type Of Business:</label>
                    <div class="col-xs-11">
                        <asp:DropDownList ID="ddlBusType" runat="server" CssClass="form-control">
                            <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Clothing"></asp:ListItem>
                            <asp:ListItem Text="Hair Care"></asp:ListItem>
                            <asp:ListItem Text="Skin Care"></asp:ListItem>
                            <asp:ListItem Text="Crafty Industry"></asp:ListItem>
                            <asp:ListItem Text="Others"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Panel ID="pnltype" runat="server" Visible="False">
                            <asp:Label ID="lbltype" runat="server" Text="Label" Style="color: red"></asp:Label>
                            <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">Description:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtDesc" runat="server" Class="form-control" placeholder="Enter The Deails About Your Business" Height="100px" TextMode="MultiLine"></asp:TextBox>
                        <asp:Panel ID="pnldesc" runat="server" Visible="False">
                            <asp:Label ID="lbldesc" runat="server" Text="Label" Style="color: red"></asp:Label>
                            <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">Business Email:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtBusmail" runat="server" class="form-control" placeholder="Enter Your Business Email"></asp:TextBox>
                        <asp:Panel ID="pnlmail" runat="server" Visible="False">
                            <asp:Label ID="lblmail" runat="server" Text="Label" Style="color: red"></asp:Label>
                            <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">Phone no.:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtPhn" runat="server" Class="form-control" placeholder="Enter Your Phone No."></asp:TextBox>
                        <asp:Panel ID="pnlphn" runat="server" Visible="False">
                            <asp:Label ID="lblphn" runat="server" Text="Label" Style="color: red"></asp:Label>
                            <br />
                        </asp:Panel>
                    </div>

                    <label class="col-xs-11">
                        <br />
                        Address:</label>

                    <table class="auto-style1">
                        <tr>
                            <td>
                                <label class="col-xs-11">House No.:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtHouse" runat="server" Class="form-control" placeholder="Enter Your House No."></asp:TextBox>
                                    <asp:Panel ID="pnlhous" runat="server" Visible="False">
                                        <asp:Label ID="lblhouse" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                            <td>
                                <label class="col-xs-11">Street:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtStreet" runat="server" Class="form-control" placeholder="Enter Your Street"></asp:TextBox>
                                    <asp:Panel ID="pnlstrt" runat="server" Visible="False">
                                        <asp:Label ID="lblstrt" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="col-xs-11">Locality:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtLocality" runat="server" Class="form-control" placeholder="Enter Your Locality"></asp:TextBox>
                                    <asp:Panel ID="pnlLocalty" runat="server" Visible="False">
                                        <asp:Label ID="lblLocalty" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                            <td>
                                <label class="col-xs-11">Landmark:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtLandmark" runat="server" Class="form-control" placeholder="Enter Nearest Landmark"></asp:TextBox>
                                    <asp:Panel ID="pnlLndmrk" runat="server" Visible="False">
                                        <asp:Label ID="lblLndmrk" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="col-xs-11">City:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtCity" runat="server" Class="form-control" placeholder="Enter Your City"></asp:TextBox>
                                    <asp:Panel ID="pnlcity" runat="server" Visible="False">
                                        <asp:Label ID="lblcity" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                            <td>
                                <label class="col-xs-11">State:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtState" runat="server" Class="form-control" placeholder="Enter Your State"></asp:TextBox>
                                    <asp:Panel ID="pnlstate" runat="server" Visible="False">
                                        <asp:Label ID="lblstate" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label class="col-xs-11">PIN Code:</label>
                                <div class="col-xs-11">
                                    <asp:TextBox ID="txtPin" runat="server" Class="form-control" placeholder="Enter Your House No."></asp:TextBox>
                                    <asp:Panel ID="pnlpin" runat="server" Visible="False">
                                        <asp:Label ID="lblpin" runat="server" Text="Label" Style="color: red"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                </div>
                            </td>
                        </tr>
                    </table>


                    <table class="auto-style1">
                        <tr>
                            <td style="text-align: right">
                                <br />
                                <div class="col-xs-11">
                                    <asp:Button ID="btnCncl" class="btn btn-default btn-toolbar" runat="server" Text="Cancel" OnClick="btnCncl_Click"/><%--BackColor="#0095DD" BorderColor="#0095DD"--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnUpdt" class="btn btn-success" runat="server" Text="Update" OnClick="btnUpdt_Click" OnClientClick="Confirm()"/>
                                    <%--&nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>--%>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>

            </div>
        </div>
    </div>

    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Are you sure you want to update the data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>

</asp:Content>
