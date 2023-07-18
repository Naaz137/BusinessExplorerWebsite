<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="BusinessExplorer.profile" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagPrefix="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <%--<link href="css/main.css" rel="stylesheet" />--%>

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
        .auto-style1 {
            height: 180px;
            width: 180px;
        }
        .auto-style2 {
            width: 250px;
        }

        .auto-style3 {
            width: 148px;
        }

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 63px"></div>
    <div class="limiter">
        <div class="container-login100">
            
            <!-- Profile -->
            <div class="w3-card w3-round w3-white center" style="width: 960px"><br />
                <span style="color: cornflowerblue; margin-right: auto; margin-left: 850px">
                    <span class="glyphicon glyphicon-log-out"></span>
                    <asp:button runat="server" id="btnlogout" onclick="btnlogout_Click" Text="Log out" class="btn btn-default btn-sm">                        
                    </asp:button>
                </span>
                <div class="w3-container">

                    <table class="center">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <h1 style="color: indianred">
                                    <asp:Label ID="lblWlcm" runat="server" Text="" Visible="True"></asp:Label></h1>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">
                                <p>
                                    <img src="Images/profile.png" class="auto-style1 w3-circle" alt="Avatar" />
                                </p>
                            </td>
                            <td rowspan="2">
                                <asp:Panel ID="pnlmain" runat="server">
                                    <table>
                                        <tr>
                                            <td colspan="2">
                                                <h2 class="w3-text-grey w3-padding-16">My Profile</h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                <p>
                                                    <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><b>Name</b>                                                    
                                                </p>
                                                <p>
                                                    <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i><b>User Name</b>
                                                </p>
                                                <p>
                                                    <i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i><b>Email</b>
                                                </p>
                                                <p>
                                                    <i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i><b>Date Of Birth</b>
                                                </p>
                                            </td>
                                            <td class="auto-style3">
                                                <p>
                                                    <asp:Label ID="lblCname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <asp:Label ID="lblCuname" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <asp:Label ID="lblCmail" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <asp:Label ID="lblCdob" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: right">
                                                <br />
                                                <asp:Button ID="btnEditprof" class="btn btn-primary" runat="server" Text="Edit Profile" OnClick="btnEditprof_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Panel ID="pnlEdit" runat="server" Visible="False">
                                    <table>
                                        <tr>
                                            <td colspan="2">
                                                <h2 class="w3-text-grey w3-padding-16">Edit Profile</h2>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p>
                                                    <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><b>Name</b>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                                                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                                                        <asp:Label ID="lblname" runat="server" Text="Label" Style="color: red" ></asp:Label>
                                                        <br />
                                                    </asp:Panel>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p>
                                                    <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i><b>User Name</b>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <asp:TextBox ID="txtUname" runat="server" Width="200px"></asp:TextBox>
                                                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                        <asp:Label ID="lblExist" runat="server" Text="Label" Style="color: red" ></asp:Label>
                                                        <br />
                                                    </asp:Panel>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p>
                                                    <i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i><b>Email</b>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <asp:TextBox ID="txtmail" runat="server" Width="200px"></asp:TextBox>
                                                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                                                        <asp:Label ID="lblmail" runat="server" Text="Label" Style="color: red" ></asp:Label>
                                                        <br />
                                                    </asp:Panel>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p>
                                                    <i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i><b>Date Of Birth</b>&nbsp;&nbsp;
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <asp:TextBox ID="txtdob" runat="server" Width="200px"></asp:TextBox>
                                                    <AjaxControlToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="CalendarExtender1"
                                                        Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txtdob" Enabled="true">
                                                    </AjaxControlToolkit:CalendarExtender>
                                                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                                                        <asp:Label ID="lbldob" runat="server" Text="Label" Style="color: red" ></asp:Label>
                                                        <br />
                                                    </asp:Panel>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: right">
                                                <br />
                                                <asp:Button ID="btnCncl" class="btn btn-default" runat="server" Text="Cancel" BorderColor="#337AB7" OnClick="btnCncl_Click" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>                                
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <br />
                                <p>
                                    &nbsp;&nbsp;&nbsp;
                                    Do You Own A Business?<br />
                                    <span style="color: cornflowerblue">
                                        <a class="txt2 btn" href="BusSignUp.aspx">Swith To Business Account</a></span>
                                </p>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
