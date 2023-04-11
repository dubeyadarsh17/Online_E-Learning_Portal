<%@ Page Title="" Language="C#" MasterPageFile="~/UserNavbar.Master" AutoEventWireup="true" CodeBehind="maindash.aspx.cs" Inherits="Online_E_Learning_System.maindash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <link href="css/home.css" rel="stylesheet" />
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
                        url: "maindash.aspx/findCourse",
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
    </script>--%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /*.footers {
            margin-top: 50px;
            background-color: white;
            padding: 25px;
        }*/

        body {
            background-color: #D3D3D3;
        }

        .centered {
            position: absolute;
            top: 40%;
            left: 75%;
            transform: translate(-50%, -50%);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 230px">
        <%-- <h1 style="text-align: center; font-size: 70px; font-weight: 700; color: indianred; margin-top: 50px;">Learn to Code</h1>
        <h4 style="text-align: center; color: indianred">With the world's largest web developer site.</h4>--%>
        <%-- <div class="container">
            <div class="row height d-flex justify-content-center align-items-center">
                <div class="col-md-6">
                    <div class="search">
                        <i class="fa fa-search"></i>
                        <input type="text" class="autosuggest form-control" name="AutoComplete" id="AutoComplete" placeholder="Search Course" />
                        <asp:Button ID="Button1" runat="server" OnClick="btn_search" class="button btn btn-primary" Text="Search" />
                    </div>
                </div>
            </div>
        </div>--%>
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


        <%--        <div class="d-flex" style="width: 100%; margin-top: 70px">
            <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
                <div class="w3-card-2 w3-round" style="color: black; background-color: #FFC0C7; padding: 24px">
                    <h2 style="font-size: 45px; font-weight: 700">JAVA</h2>
                    <div style="height: 70px;">
                        <h5 class="w3-text-dark-grey">A programming language</h5>
                    </div>
                    <div class="text-center">
                        <asp:LinkButton ID="LinkButton1" class="btn btn-dark" runat="server" OnClick="LinkButton1_Click">Learn JAVA</asp:LinkButton>
                    </div>
                </div>

            </div>
            <div class="w3-col l6 " style="padding: 2% 3%; width: 50%;">
                <div class="w3-card-2 w3-round" style="background-color: #FFF4A3; color: black; padding: 24px">
                    <h2 style="font-size: 45px; font-weight: 700">PHP</h2>
                    <div style="height: 70px;">
                        <h5 class="w3-text-dark-grey">A web server programming language</h5>
                    </div>
                    <div class="text-center">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="btn btn-dark">Learn PHP</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex" style="width: 100%;">
            <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
                <div class="w3-card-2 w3-round" style="color: black; background-color: #FFC0C7; padding: 24px">
                    <h2 style="font-size: 45px; font-weight: 700">CSS</h2>
                    <div style="height: 70px;">
                        <h5 class="w3-text-dark-grey">The language for styling web pages</h5>
                    </div>
                    <div class="text-center">
                        <asp:LinkButton ID="LinkButton4" OnClick="LinkButton4_Click" runat="server" class="btn btn-dark">Learn CSS</asp:LinkButton>
                    </div>
                </div>

            </div>
            <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
                <div class="w3-card-2 w3-round" style="background-color: #FFF4A3; color: black; padding: 24px">
                    <h2 style="font-size: 45px; font-weight: 700">HTML</h2>
                    <div style="height: 70px;">
                        <h5 class="w3-text-dark-grey">A JS library for developing web pages</h5>
                    </div>
                    <div class="text-center">
                        <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server" class="btn btn-dark">Learn HTML</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
        <div class="">
            <div class="">
                <div class="col-sm-12">
                    <div class="" style="padding: 2% 3%">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <%--  indicators--%>
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>
                            <%--   wrapper for slide--%>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="image/e11.jpg" style="height: 470px; width: 1100px" alt="Pan" />
                                    <div class="centered">
                                        <img src="image/E-learn_icon.png" height="200" width="250" />
                                        <h4>Upgrade Your Technical Knowledge</h4>
                                        <p>E-Learning Portal is a network of the country with an aim to transform the future of learning.</p>

                                    </div>
                                </div>
                                <div class="item">
                                    <img src="image/E12.jpg" style="height: 470px; width: 1100px" />
                                    <div class="centered">
                                        <img src="image/E-learn_icon.png" height="200" width="250" />
                                        <h4>Upgrade Your Technical Knowledge</h4>
                                        <p>E-Learning Portal is a network of the country with an aim to transform the future of learning.</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="image/E14.jpg" style="height: 470px; width: 1100px" alt="Cigaratte" />
                                    <div class="centered">
                                        <img src="image/E-learn_icon.png" height="200" width="250" />
                                        <h4>Upgrade Your Technical Knowledge</h4>
                                        <p>E-Learning Portal is a network of the country with an aim to transform the future of learning.</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="image/E15.jpg" style="height: 470px; width: 1100px" alt="Cigaratte" />
                                    <div class="centered">
                                        <img src="image/E-learn_icon.png" height="200" width="250" />
                                        <h4>Upgrade Your Technical Knowledge</h4>
                                        <p>E-Learning Portal is a network of the country with an aim to transform the future of learning.</p>
                                    </div>
                                    <%-- <div class="carousel-caption">
                                    <h3>Best Offer</h3>
                                    <p></p>
                                </div>--%>
                                </div>
                            </div>
                            <%-- left and right control--%>
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">

                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=" text-center">
            <h2>Programs</h2>
            <div class="d-flex" style="width: 100%;">
                <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
                    <div class="w3-card-2 roundk" style="color: black; background-color: #FFC0C7; padding: 24px">
                        <h2 style="font-size: 45px; font-weight: 700">JAVA</h2>
                        <div style="height: 70px;">
                            <h5 class="w3-text-dark-grey">A programming language</h5>
                        </div>
                        <div class="text-center">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-dark" runat="server" OnClick="LinkButton1_Click">Learn JAVA</asp:LinkButton>
                        </div>
                    </div>

                </div>
                <div class="w3-col l6 " style="padding: 2% 3%; width: 50%;">
                    <div class="w3-card-2 round" style="background-color: #FFF4A3; color: black; padding: 24px">
                        <h2 style="font-size: 45px; font-weight: 700">PHP</h2>
                        <div style="height: 70px;">
                            <h5 class="w3-text-dark-grey">A web server programming language</h5>
                        </div>
                        <div class="text-center">
                            <%-- <a href="/jquery/default.asp" class="w3-button tut-button black-color w3-margin-bottom">Learn jQuery</a>--%>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" class="btn btn-dark">Learn PHP</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex" style="width: 100%;">
                <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 50%;">
                    <div class="w3-card-2 round" style="color: black; background-color: #F3ECEA; padding: 24px">
                        <h2 style="font-size: 45px; font-weight: 700">CSS</h2>
                        <div style="height: 70px;">
                            <h5 class="w3-text-dark-grey">The language for styling web pages</h5>
                        </div>
                        <div class="text-center">
                            <asp:LinkButton ID="LinkButton3" OnClick="LinkButton4_Click" runat="server" class="btn btn-dark">Learn CSS</asp:LinkButton>
                        </div>
                    </div>

                </div>
                <div class="w3-col l6 " style="padding: 2% 3%; width: 50%;">
                    <div class="w3-card-2 round" style="color: black; background-color: #D9EEE1; padding: 24px">
                        <h2 style="font-size: 45px; font-weight: 700">HTML</h2>
                        <div style="height: 70px;">
                            <h5 class="w3-text-dark-grey">The language for building web pages</h5>
                        </div>
                        <div class="text-center">
                            <%-- <a href="/jquery/default.asp" class="w3-button tut-button black-color w3-margin-bottom">Learn jQuery</a>--%>
                            <asp:LinkButton ID="LinkButton4" OnClick="LinkButton3_Click" runat="server" class="btn btn-dark">Learn HTML</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <h2 class="text-center" data-aos="fade-up">Get the E-Learning advantage</h2>
            <div class="" style="padding: 2% 3%">
                <div class="col-md-12 d-flex ">
                    <div class="card col-md-4 mx-1">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center">
                                <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/concept-clarity.png" width="250" height="250">
                                <p>Conceptual clarity through visualisation</p>
                            </div>
                        </div>
                    </div>
                    <div class="card col-md-4 mx-1">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center">
                                <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/personalised-learning.png" width="250" height="250">
                                <p>Personalised learning programs</p>
                            </div>
                        </div>
                    </div>
                    <div class="card col-md-4 mx-1">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center">
                                <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/unmatched-attention.png" width="250" height="250">
                                <p>Unmatched individual attention</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--<section class="bj-advantages bj-section">
            <div class="container">
                <h2 class="section-header aos-init aos-animate" data-aos="fade-up">Get the E-Learning advantage</h2>
                <div class="row justify-content-between section-content bj-adv-list">
                    <div class="col-sm-12 col-md-2 bj-adv-item aos-init aos-animate" data-aos="fade-up">
                        <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/concept-clarity.png">
                        <p>Conceptual clarity
                            <br>
                            through visualisation</p>
                    </div>
                    <div class="col-sm-12 col-md-2 bj-adv-item aos-init aos-animate" data-aos="fade-up">
                        <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/personalised-learning.png">
                        <p>Personalised learning
                            <br>
                            programs</p>
                    </div>
                    <div class="col-sm-12 col-md-2 bj-adv-item aos-init aos-animate" data-aos="fade-up">
                        <img class=" ls-is-cached lazyloaded" src="https://cdn1.byjus.com/wp-content/uploads/2022/04/unmatched-attention.png">
                        <p>Unmatched individual
                            <br>
                            attention</p>
                    </div>
                </div>
            </div>
        </section>--%>
        <%-- <div class=" text-center">
            <h3>Benifits of E-Learning</h3>
            <div class="" style="padding: 2% 3%">
                <img src="image/ben-learning.jpg" style="height: 550px; width: 100%" />
            </div>
        </div>--%>
        <div class="text-center p-4" style="background-color:white; margin-top: 315px;">
            © 2021 Copyright E-Learning Portal
        </div>
    </div>
    <%-- <div>
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);margin-top: 315px;">
            © 2021 Copyright E-Learning Portal
        </div>
    </div>--%>
</asp:Content>
