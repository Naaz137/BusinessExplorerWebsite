<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusProfile.aspx.cs" Inherits="BusinessExplorer.BusProfile" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagPrefix="AjaxControlToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
        
    </style>
    <style>
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

            /* Style the buttons that are used to open the tab content */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: #ccc;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
            /*height: 1000px;*/
        }

        .tabcontent {
            animation: fadeEffect 1s; /* Fading effect takes 1 second */
        }

        /* Go from zero to full opacity */
        @keyframes fadeEffect {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }
        .auto-style1 {
            width: 820px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div style="height: 100px"></div>--%>
    
    <div style="height: 60px"></div>
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
                                    <h1 class="w3-text-grey w3-padding-16">My Profile</h1>
                                </div>
                                <div class="w3-display-container w3-center">
                                    <img src="Images/profile.png" class="w3-circle" style="width: 60%" alt="Avatar" />
                                    <%--<div class="w3-display-bottomleft w3-container w3-text-black">
                                        <--<h2>My Profile</h2>-->
                                    </div>  --%>
                                    <hr />
                                </div>
                                <div class="w3-container">

                                    <asp:Panel ID="pnlmain" runat="server">
                                        <table>                                           
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
                                                        <i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i><b>Date Of Birth</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                                    <p>
                                                        <asp:Label ID="lblEdob" CssClass="fa-fw w3-margin-right" runat="server"></asp:Label>
                                                    </p>
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
                                                            <asp:Label ID="lblname" runat="server" Text="Label" Style="color: red" Visible="False"></asp:Label>
                                                            <br />
                                                        </asp:Panel>
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
                                                            <asp:Label ID="lblExist" runat="server" Text="Label" Style="color: red" Visible="False"></asp:Label>
                                                            <br />
                                                        </asp:Panel>
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
                                                            <asp:Label ID="lblmail" runat="server" Text="Label" Style="color: red" Visible="False"></asp:Label>
                                                            <br />
                                                        </asp:Panel>
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
                                                        <ajaxcontroltoolkit:calendarextender id="CalendarExtender1" runat="server" behaviorid="CalendarExtender1"
                                                            format="dd/MM/yyyy" popupposition="Right" targetcontrolid="txtdob" enabled="true">
                                                        </ajaxcontroltoolkit:calendarextender>
                                                        <asp:Panel ID="Panel5" runat="server" Visible="False">
                                                            <asp:Label ID="lbldob" runat="server" Text="Label" Style="color: red" Visible="False"></asp:Label>
                                                            <br />
                                                        </asp:Panel>       
                                                        <p>
                                                        </p>
                                                    </p>
                                                </td>
                                            </tr>                                        
                                        </table>
                                    </asp:Panel>

                                    <%--<p>
                                        <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>Name:
                                    <asp:Label ID="lblEname" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i>User Name:
                                    <asp:Label ID="lblEuname" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        <i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i>Email:
                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        <i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-theme"></i>Phone:
                                    <asp:Label ID="lblEphn" runat="server"></asp:Label>
                                    </p>--%>


                                    <hr />
                                    <table>
                                        <tr>
                                            <td>
                                                <span style="color: cornflowerblue">
                                                    <span class="glyphicon glyphicon-log-out"></span>
                                                    <asp:Button runat="server" ID="btnlogout" OnClick="btnlogout_Click" Text="Log out" class="btn btn-default btn-sm"></asp:Button>
                                                </span>
                                            </td>
                                            <td style="text-align: right; width: 300px">
                                                <asp:Panel ID="pnlEbtn" runat="server">
                                                    <asp:Button ID="btnEditprof" class="btn btn-primary" runat="server" Text="Edit Profile" OnClick="btnEditprof_Click" />
                                                </asp:Panel>

                                                <asp:Panel ID="pnlSbtn" runat="server" Visible="false">
                                                    <asp:Button ID="btnCncl" class="btn btn-default" runat="server" Text="Cancel" BorderColor="#337AB7" OnClick="btnCncl_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click" />
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </div>
                            </div>
                            <br />

                            <!-- End Left Column -->
                        </div>

                        <!-- Right Column -->
                        <div class="w3-twothird">

                            <div class="w3-container w3-card w3-white w3-margin-bottom">
                                <%--<br />
                                <span style="color: cornflowerblue; margin-right: auto; margin-left: 700px">
                                    <asp:Button runat="server" ID="btnUpdt" Text="Update" class="btn btn-default" OnClick="btnUpdt_Click"></asp:Button>
                                </span>--%>

                                <%--<h1 class="w3-text-grey w3-padding-16">My Business&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>--%>
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <h1 class="w3-text-grey w3-padding-16">My Business</h1>
                                        </td>
                                        <td style="text-align:right">
                                            <asp:Button runat="server" ID="btnUpdt" Text="Update" class="btn btn-default btn-primary" OnClick="btnUpdt_Click"></asp:Button>
                                        </td>
                                    </tr>
                                </table>

                                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>
                                        <asp:Label ID="lblbusName" runat="server"></asp:Label></h2>
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
                                    <i class="fa fa-address-book fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>Contacts</h2>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>E-mail</b></h5>
                                    <%--<h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>--%>
                                    <p>
                                        <asp:Label ID="busEmail" runat="server"></asp:Label>
                                    </p>
                                    <hr />

                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Phone</b></h5>
                                    <%--<h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>--%>
                                    <p>
                                        <asp:Label ID="busPhn" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                </div>
                                <div class="w3-container">
                                    <h5 class="w3-opacity"><b>Address</b></h5>
                                    <%--<h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>--%>
                                    <p>
                                        <asp:Label ID="busAdd" runat="server"></asp:Label>
                                    </p>
                                    <hr />
                                    <br />
                                </div>
                            </div>


                            <div class="w3-container w3-card w3-white">
                                <h2 class="w3-text-grey w3-padding-16">
                                    <i class="fa fa-product-hunt fa-fw w3-margin-right w3-xxlarge w3-text-theme"></i>Products</h2>
                                <div class="w3-container">
                                    <div class="tab">
                                        <button type="button" class="tablinks" onclick="openCity(event, 'report')" id="defaultOpen">All Products</button>
                                        <button type="button" class="tablinks" onclick="openCity(event, 'add')">Add Product</button>
                                        <button type="button" class="tablinks" onclick="openCity(event, 'edit')">Edit Product</button>
                                        <button type="button" class="tablinks" onclick="openCity(event, 'delete')">Delete Product</button>                                       
                                    </div>

                                    <div id="add" class="tabcontent">
                                        <br />
                                        <%--<h2>Add Product</h2>
                                        <hr />--%>
                                        <div class="container">
                                            <div class="form-horizontal">

                                                <div class="form-group">
                                                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList><%--OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList><%--OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label19" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList><%--OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Materials and Care"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label12" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label13" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label16" runat="server" CssClass="col-md-2 control-label" Text="Delivery Available"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="chFD" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label17" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="ch30Ret" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="cbCOD" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <div class="col-md-2 "></div>
                                                    <div class="col-md-6 ">
                                                        <asp:Button ID="btnAdd" CssClass="btn btn-success " runat="server" Text="Add Product" /><%--OnClick="btnAdd_Click"--%>
                                                    </div>

                                                </div>
                                                <br />
                                            </div>

                                        </div>
                                    </div>

                                    <div id="edit" class="tabcontent">
                                        <br />
                                        <%--<h2>Add Product</h2>
                                        <hr />--%>
                                        <div class="container">
                                            <div class="form-horizontal">

                                                <div class="form-group">
                                                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>


                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label15" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList><%--OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList><%--OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label22" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" AutoPostBack="True"></asp:DropDownList><%--OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"--%>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label23" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label24" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label25" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox4" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                      

                                                <div class="form-group">
                                                    <asp:Label ID="Label27" runat="server" CssClass="col-md-2 control-label" Text="Materials and Care"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:TextBox ID="TextBox6" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label28" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label29" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label30" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <asp:Label ID="Label31" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:FileUpload ID="FileUpload4" CssClass="form-control" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label32" runat="server" CssClass="col-md-2 control-label" Text="Delivery Available"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label33" runat="server" CssClass="col-md-2 control-label" Text="30 Days Return"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <asp:Label ID="Label34" runat="server" CssClass="col-md-2 control-label" Text="COD"></asp:Label>
                                                    <div class="col-md-3">
                                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <div class="col-md-2 "></div>
                                                    <div class="col-md-6 ">

                                                        <asp:Button ID="Button1" CssClass="btn btn-success " runat="server" Text="Edit Product" /><%--OnClick="btnAdd_Click"--%>
                                                    </div>

                                                </div>
                                                <br />
                                            </div>

                                        </div>
                                    </div>

                                    <div id="report" class="tabcontent">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h2>Product Report</h2>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="table table-responsive">
                                                            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="PID" HeaderText="S.No." />
                                                                    <asp:BoundField DataField="PName" HeaderText="PName" />
                                                                    <asp:BoundField DataField="PPrice" HeaderText="Price" />                                                                                                                                     
                                                                    <asp:BoundField DataField="CatName" HeaderText="Category" />
                                                                    <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />
                                                                    <asp:BoundField DataField="gender" HeaderText="gender" />
                                                                    <asp:BoundField DataField="SizeName" HeaderText="SizeName" />
                                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />

                                                                    <asp:TemplateField HeaderText="Photo">
                                                                        <ItemTemplate>
                                                                            <%-- <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style=" height:150px; width:150px;"/> --%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>

                                                                    <%-- <asp:CommandField ShowEditButton="true" />  <asp:CommandField ShowDeleteButton="true" />--%>
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>

                                                    </div>

                                                </div>


                                            </div>
                                        </div>

                                        <script>
                                            function openCity(evt, cityName) {
                                                var i, tabcontent, tablinks;
                                                tabcontent = document.getElementsByClassName("tabcontent");
                                                for (i = 0; i < tabcontent.length; i++) {
                                                    tabcontent[i].style.display = "none";
                                                }
                                                tablinks = document.getElementsByClassName("tablinks");
                                                for (i = 0; i < tablinks.length; i++) {
                                                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                                                }
                                                document.getElementById(cityName).style.display = "block";
                                                evt.currentTarget.className += " active";
                                            }

                                            document.getElementById("defaultOpen").click();
                                        </script>
                                    </div>
                                <br />
                                
                            </div>
                            
                            <!-- End Right Column -->
                        </div>

                        <!-- End Grid -->
                    </div>

                    <!-- End Page Container -->
                </div>

            </div>
        </div>

    </div>    

    

    </div>
</asp:Content>

