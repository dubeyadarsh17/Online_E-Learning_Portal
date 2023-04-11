<%@ Page Title="" Language="C#" MasterPageFile="~/UserNavbar.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Online_E_Learning_System.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 250px">
        <asp:Repeater ID="questionRept" runat="server" OnItemDataBound="OnItemDataBound" OnItemCommand="questionRept_ItemCommand">
            <ItemTemplate>
                <h3><%# Eval("question") %></h3>
                <p>Posted by <%# Eval("name") %> on <%# Eval("time_stump") %></p>
                <ul>
                    <asp:Repeater ID="answerRept" runat="server">
                        <ItemTemplate>
                            <li><%# Eval("answer") %> - Posted by <%# Eval("name") %> on <%# Eval("timestamp") %></li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:HiddenField ID="QuestionId" runat="server" Value='<%# Eval("q_id") %>' />
                </ul>
                <div class="row height d-flex justify-content-center align-items-center">
                    <div class="col-md-6">
                        <div class="search">
                            <%-- <i class="fa fa-reply" aria-hidden="true"></i>--%>
                            <i class="fa fa-reply"></i>
                            <asp:TextBox ID="AutoComplete" class="autosuggest form-control" name="AutoComplete"  placeholder="Reply"  runat="server"></asp:TextBox>
                           <%-- <input type="text" class="autosuggest form-control" name="AutoComplete" id="AutoComplete" placeholder="Reply" />--%>
                            <asp:Button ID="Button1" runat="server" CommandName="sendReply" class="button btn btn-dark" Text="Send" />
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
