<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="browse.aspx.cs" Inherits="BusinessExplorer.browse" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">
    </script>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .busName {
            font-size: 27px;
            font-weight: 500;
            line-height: 35px;
            /*text-transform: uppercase;*/
            font-family: sans-serif;
            color: dodgerblue;
        }

        /*.busName:hover {
            text-decoration: underline;
        }*/

        .busType {
            font-size: 17px;
            line-height: 20px;
            font-family: sans-serif;
            font-weight: 600;
        }

        .busDesc {
            font-size: 15px;
            line-height: 20px;
            letter-spacing: 0.8px;
            font-family: sans-serif;
        }
    </style>
    <style>
        .bar {
            margin: 0 auto;
            width: 575px;
            border-radius: 30px;
            border: 1px solid #dcdcdc;
        }

            .bar:hover {
                box-shadow: 1px 1px 8px 1px #dcdcdc;
            }

            .bar:focus-within {
                box-shadow: 1px 1px 8px 1px #dcdcdc;
                outline: none;
            }

        .searchbar {
            height: 45px;
            border: none;
            width: 500px;
            font-size: 16px;
            outline: none;
        }
    </style>
    <style>
        .limiter {
            width: 100%;
            margin: 0 auto;
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
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 63px"></div>
    <div class="limiter">
        <div class="container-login100">
            <div class="w3-card w3-round w3-white center" style="width: 90%">
                <div style="padding-left: 150px; padding-right: 150px">
                    <div style="height: 38px"></div>
                    <table class="cntr" style="width: 100%">
                        <tr>
                            <td style="text-align: center">
                                <div class="bar">
                                    <asp:TextBox ID="txtFilterGrid1Record" CssClass="searchbar" runat="server" 
                                        placeholder="Search by location or product..." AutoPostBack="true" OnTextChanged="txtFilterGrid1Record_TextChanged">
                                    </asp:TextBox>                                    
                                    <a href="#"><i class="fa fa-search w3-text-blue"></i></a>
                                </div>                                    
                            </td>
                        </tr>
                    </table>

                    <br />
                    <hr />
                    <div>
                        <div>
                            <h1 class="w3-text-grey w3-padding-16">
                                <asp:Label ID="Label1" runat="server" Text="Showing All Businesses"></asp:Label>
                            </h1>
                        </div>
                    </div>
                    <asp:Repeater ID="RepterDetails" runat="server">
                        <ItemTemplate>
                            <div>
                                <a href="ViewBus.aspx?Uid=<%# Eval("Uid") %>" style="text-decoration: none;">
                                <div class="thumbnail">                                    
                                    <div class="caption">
                                        <div class="busName"><%# Eval ("Bus_name") %>  </div>
                                        <div class="busType"><%# Eval ("Bus_type") %> </div>
                                        <div class="busDesc"><%# Eval("Bus_desc") %></div>
                                    </div>
                                </div>
                                </a>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

