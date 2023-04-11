<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="questionAnswerAdmin.aspx.cs" Inherits="Online_E_Learning_System.questionAnswerAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- css cdn--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <%--javascript cdn--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <%--<link href="BootStrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
  <script src="BootStrap/css/dataTables.bootstrap5.min.js"></script>--%>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <%--<link href="BootStrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
  <script src="BootStrap/css/dataTables.bootstrap5.min.js"></script>--%>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#my').DataTable({
                "bPaginate": false;
            });

        });
  </script>
    <script type="text/javascript">
        function userValidation() {
            var text, gmail, password, password1, emailExp;
            text = document.getElementById("ContentPlaceHolder1_questionRept_AutoComplete_2").value;
            if (text == '') {
                alert("Enter Name Field");
                return false;
            }
            return true;
        }
    </script>
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #f093fb;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
    </style>
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 230px">
        <div class="card">
            <div class="card-header">
                <asp:DropDownList ID="Dropdown" AutoPostBack="true" Style="border: solid;" OnSelectedIndexChanged="Dropdown_SelectedIndexChanged" class="select dropdown-toggle form-control-lg" runat="server"></asp:DropDownList>
            </div>
            <div class="card-body">
                <div class="blockquote mb-0">
                    <asp:Repeater ID="questionRept" runat="server" OnItemDataBound="OnItemDataBound" OnItemCommand="questionRept_ItemCommand">
                        <ItemTemplate>
                            <h3><b><%# Eval("question") %></b></h3>
                            <h4>Posted by <%# Eval("name") %> on <%# Eval("time_stump") %></h4>
                            <div>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-dark" CommandName="deleteQuestion" Text="DeleteQuestion"></asp:LinkButton>

                            </div>
                            <asp:Repeater ID="answerRept" runat="server" OnItemCommand="answerRept_ItemCommand">
                                <HeaderTemplate>
                                    <table class="tblcolor" id="my">
                                        <thead>
                                            <tr>
                                                <th>Answers</th>
                                                <th>Posted By</th>
                                                <th>Posted Time</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr class="tblrowcolor">
                                        <td>
                                            <asp:HiddenField ID="AnswerId" runat="server" Value='<%# Eval("id") %>' />
                                            <asp:Label ID="Label1" runat="server" Style="float: left; margin-right: 30px; width: 600px;" Text='<%# Bind("answer") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Style="float: left; margin-right: 30px; width: 100px;" Text='<%# Bind("name") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Style="float: left; margin-right: 30px;" Text='<%# Bind("timestamp") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-dark" CommandName="delete" Text="Delete"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>  
                                </FooterTemplate>
                                <%--<ItemTemplate>
                                        <li>
                                            <h4><b>Answer:- </b><%# Eval("answer") %> - Posted by <%# Eval("name") %> on <%# Eval("timestamp") %></h4>
                                        </li>
                                    </ItemTemplate>--%>
                            </asp:Repeater>
                            <asp:HiddenField ID="QuestionId" runat="server" Value='<%# Eval("q_id") %>' />
                            <div class="form-floating">
                                <div class="search mt-3">
                                    <i class="fa hii fa-reply"></i>
                                    <asp:TextBox ID="AutoComplete" class="autosuggest form-control" name="AutoComplete" placeholder="Reply" runat="server"></asp:TextBox>
                                    <%--  <input type="button" class="button src-btn btn-dark" onclick="userValidation()" />--%>
                                 <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AutoComplete"  ErrorMessage="Please Enter Answer" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="AutoComplete" ValidationGroup="regi" ErrorMessage="please enter only name" ForeColor="blue" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                       --%>             <asp:Button ID="Button1" runat="server" CommandName="sendReply" class="button btn btn-dark" Text="Send" />
                                </div>
                            </div>
                            <hr style="border-top: 2px solid;" class="mt-5 mb-5" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

