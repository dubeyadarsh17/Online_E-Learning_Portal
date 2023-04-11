<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="Teacherhome.aspx.cs" Inherits="Online_E_Learning_System.Teacherhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 230px;">
        <div class="row mx-2 my-5">
            <!-- Total Course -->
            <div class="col-xl-4 col-md-12 mb-4">
                <a href="upadtecoursecontent.aspx" style="text-decoration: none">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Total Course
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-book fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <!--Total Student -->
            <div class="col-xl-4 col-md-12 mb-4">
                <a href="viewUser.aspx" style="text-decoration: none">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Total Student
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <!-- Total Question -->
            <div class="col-xl-4 col-md-12 mb-4">
                <a href="questionAnswerAdmin.aspx" style="text-decoration: none">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Total Question
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-question fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

            <%-- <!-- Total Teacher -->
            <div class="col-xl-3 col-md-6 mb-4">
                <a href="showteacher.aspx" style="text-decoration: none">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        Total Teacher
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>--%>
        </div>
       
        <div class="card col-md-5" style="margin-left: 15px">
            <div id="container1"></div>
            <script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.bundle.min.js'></script>
        </div>
        <%-- <div>
            <asp:HiddenField ID="asp1" runat="server" />
            <asp:HiddenField ID="php1" runat="server" />
            <asp:HiddenField ID="java1" runat="server" />
            <asp:HiddenField ID="designer1" runat="server" />
            <asp:HiddenField ID="nodejs1" runat="server" />
        </div>--%>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.bundle.min.js'></script>
        <script>
            var tcourse = parseInt(document.getElementById('<%=Label1.ClientID%>').innerHTML);
            var tstudent = parseInt(document.getElementById('<%=Label2.ClientID%>').innerHTML);
            var tquestion = parseInt(document.getElementById('<%=Label3.ClientID%>').innerHTML);
         
            $(document).ready(function () {
                var chart = {
                    type: 'pie',
                    options3d: {
                        enabled: true,
                        alpha: 45
                    }
                };
                var title = {
                    text: 'Reports'
                };
                //var subtitle = {
                //    text: 'Status'
                //};
                var plotOptions = {
                    pie: {
                        innerSize: 100,
                        depth: 50
                    }
                };
                var series = [{
                    name: '',
                    data: [
                        ['Total Course', tcourse],
                        ['Total Student', tstudent],
                        ['Total Question', tquestion],
                    ]
                }];
                var json = {};
                json.chart = chart;
                json.title = title;
                /* json.subtitle = subtitle;*/
                json.plotOptions = plotOptions;
                json.series = series;
                $('#container1').highcharts(json);
            });
        </script>

    </div>
</asp:Content>
