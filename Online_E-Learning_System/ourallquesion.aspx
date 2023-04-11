﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserNavbar.Master" AutoEventWireup="true" CodeBehind="ourallquesion.aspx.cs" Inherits="Online_E_Learning_System.ourallquesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <%--<link href="BootStrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
  <script src="BootStrap/css/dataTables.bootstrap5.min.js"></script>--%>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#my').DataTable({
                "lengthChange": false
            });

        });
  </script>
    <link href="css/home.css" rel="stylesheet" />
    <link href="css/repetercourse.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="questionForm" style="margin-left: 230px" runat="server">
        <%--<div class="card">
            <div class="card-header">
                <h3 style="text-align: center"><b>Ask Question Related This Course:</b></h3>
            </div>
            <div class="card-body">
                <div class="blockquote mb-0">
                    <div class="search">
                        <i class="fa-solid fa-question"></i>
                        <asp:TextBox ID="askquestions" class="autosuggest form-control" name="AutoComplete" placeholder="ask question" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="askquestions" ValidationGroup="ques" ErrorMessage="Please Enter Question" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="askquestions" ValidationGroup="ques" ErrorMessage="please enter only name" ForeColor="Red" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>

                        <asp:Button ID="Button1" runat="server" CommandName="sendReply" OnClick="Button1_Click" ValidationGroup="ques" class="button btn btn-dark" Text="Send" />
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="card">
            <div class="card-header">
                <h3 style="text-align: center"><b>Questions And Answers</b></h3>
            </div>
            <div class="card-body">
                <div class="blockquote mb-0">
                    <asp:Repeater ID="questionRept" runat="server" OnItemDataBound="OnItemDataBound" OnItemCommand="questionRept_ItemCommand">
                        <ItemTemplate>
                            <h3><b><%# Eval("question") %></b></h3>
                            <h4>Posted by <%# Eval("name") %> on <%# Eval("time_stump") %></h4>
                            <ul>
                                <asp:Repeater ID="answerRept" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <h4><b>Answer:- </b><%# Eval("answer") %> - Posted by <%# Eval("name") %> on <%# Eval("timestamp") %></h4>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:HiddenField ID="QuestionId" runat="server" Value='<%# Eval("q_id") %>' />
                            </ul>
                            <div class="form-floating mt-4">
                                <div class="search">
                                    <i class="fa hii fa-reply"></i>
                                    <asp:TextBox ID="AutoComplete" class="autosuggest form-control" name="AutoComplete" placeholder="Reply" runat="server"></asp:TextBox>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AutoComplete" ValidationGroup="regi" ErrorMessage="name is empty" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="AutoComplete" ValidationGroup="regi" ErrorMessage="please enter only name" ForeColor="Red" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    --%>
                                    <asp:Button ID="Button1" runat="server" CommandName="sendReply" class="button btn btn-dark" ValidationGroup="regi" Text="Send" />
                                </div>
                            </div>
                            <hr style="border-top: 2px solid;" class="mt-5 mb-5" />
                            <%-- <div class="row height d-flex justify-content-center align-items-center">
                                <div class="col-md-6">
                                    <div class="search">
                                        <i class="fa fa-reply"></i>
                                        <asp:TextBox ID="AutoComplete" class="autosuggest form-control" name="AutoComplete" placeholder="Reply" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" CommandName="sendReply" class="button btn btn-dark" Text="Send" />
                                    </div>
                                </div>
                            </div>--%>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
