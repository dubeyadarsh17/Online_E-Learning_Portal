<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashboard.Master" CodeBehind="student_homepage.aspx.cs" Inherits="Online_E_Learning_System.student_homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/home.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <link rel="Stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" />
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            SearchText();
        });
        function SearchText() {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "maindash.aspx/getCustomerNames",
                        data: "{'prefixText':'" + document.getElementById('AutoComplete').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center; font-size: 70px; font-weight: 700; color: indianred; margin-top: 50px;">Learn to Code</h1>
    <h4 style="text-align: center; color: indianred">With the world's largest web developer site.</h4>
    <div class="container">
        <div class="row height d-flex justify-content-center align-items-center">
            <div class="col-md-8">
                <%--<div class="search">
                    <i class="fa fa-search"></i>
                    <input type="text" class="form-control" placeholder="Have a question? Ask Now">
                    <button class="button btn btn-primary">Search</button>
                </div>--%>
                <div class="search">
                    <i class="fa fa-search"></i>
                    <input type="text" class="autosuggest form-control" name="AutoComplete" id="AutoComplete" placeholder="Have a question? Ask Now" />
                    <asp:Button ID="Button1" runat="server"  OnClick="btn_search" class="button btn btn-primary" Text="Search" />
                </div>
            </div>
        </div>
    </div>
    <%--<div class="container">
        <div class="row">
            <div class="col-md-4 col-xl-3">
                <div class="card bg-c-blue order-card">
                    <div class="card-block">
                        <h6 style="color: black" class="m-b-20">JAVA</h6>
                        <h2 class="text-right"><a href="#">
                            <img src="image/html.jpg" /></a></h2>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-xl-3">
                <div class="card bg-c-green order-card">
                    <div class="card-block">
                        <h6 style="color: black" class="m-b-20">HTML LANGUAGE</h6>
                        <h2 class="text-right">
                            <img src="image/html.jpg" /></h2>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-xl-3">
                <div class="card bg-c-yellow order-card">
                    <div class="card-block">
                        <h6 class="m-b-20">Orders Received</h6>
                        <h2 class="text-right"><i class="fa fa-refresh f-left"></i><span>486</span></h2>
                        <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-xl-3">
            <div class="card bg-c-pink order-card">
                <div class="card-block">
                    <h6 class="m-b-20">Orders Received</h6>
                    <h2 class="text-right"><i class="fa fa-credit-card f-left"></i><span>486</span></h2>
                    <p class="m-b-0">Completed Orders<span class="f-right">351</span></p>
                </div>
            </div>
        </div>
    </div>--%>
    <%--<div class="w3-row w3-padding-64 ws-black">
        <div style="max-width: 1400px; margin: auto">--%>


    <div class="d-flex" style="width: 100%; margin-top: 70px">
        <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
            <div class="w3-card-2 w3-round" style="color: black; background-color: #FFC0C7; padding: 24px">
                <h2 style="font-size: 45px; font-weight: 700">JAVA</h2>
                <div style="height: 70px;">
                    <h5 class="w3-text-dark-grey">A programming language</h5>
                </div>
                <asp:LinkButton ID="LinkButton1" class="w3-button tut-button black-color w3-margin-bottom" runat="server" OnClick="LinkButton1_Click">Learn JAVA</asp:LinkButton>
            </div>

        </div>
        <div class="w3-col l6 " style="padding: 2% 3%; width: 50%;">
            <div class="w3-card-2 w3-round" style="background-color: #FFF4A3; color: black; padding: 24px">
                <h2 style="font-size: 45px; font-weight: 700">PHP</h2>
                <div style="height: 70px;">
                    <h5 class="w3-text-dark-grey">A web server programming language</h5>
                </div>
                <%-- <a href="/jquery/default.asp" class="w3-button tut-button black-color w3-margin-bottom">Learn jQuery</a>--%>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="w3-button tut-button black-color w3-margin-bottom">Learn PHP</asp:LinkButton>
            </div>
        </div>
    </div>
    <div class="d-flex" style="width: 100%;">
        <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
            <div class="w3-card-2 w3-round" style="color: black; background-color: #FFC0C7; padding: 24px">
                <h2 style="font-size: 45px; font-weight: 700">PHP</h2>
                <div style="height: 70px;">
                    <h5 class="w3-text-dark-grey">A web server programming language</h5>
                </div>
                <a href="/php/default.asp" class="w3-button tut-button black-color w3-margin-bottom">Learn PHP</a>
            </div>

        </div>
        <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
            <div class="w3-card-2 w3-round" style="background-color: #FFF4A3; color: black; padding: 24px">
                <h2 style="font-size: 45px; font-weight: 700">HTML</h2>
                <div style="height: 70px;">
                    <h5 class="w3-text-dark-grey">A JS library for developing web pages</h5>
                </div>
                <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server" class="w3-button tut-button black-color w3-margin-bottom">Learn HTML</asp:LinkButton>
            </div>
        </div>
    </div>

</asp:Content>
