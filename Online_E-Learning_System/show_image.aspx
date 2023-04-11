<%@ Page Title="" Language="C#" MasterPageFile="~/UserNavbar.Master" AutoEventWireup="true" CodeBehind="show_image.aspx.cs" Inherits="Online_E_Learning_System.show_image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            /*  background-image: url("/image/background.jpg");*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:70px">
        <div class="d-flex" style="width: 100%;">
            <div class="w3-col l6 w3-center" style="padding: 2% 3%; width: 20%;">
                <div class="w3-card-2 w3-round"  padding: 24px">
             <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                    <table class="tblcolor" id="mytable">
                        <thead>
                            <tr>
                                <th>Course Topic</th>
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="tblrowcolor">
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="show" Text='<%# Eval("course_topic") %>'></asp:LinkButton>
                            <asp:Label ID="Label1" runat="server" Visible="false" Text='<%# Eval("course_topic") %>'></asp:Label>
                        </td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </table>  
                </FooterTemplate>

            </asp:Repeater>
                    
                </div>

            </div>
            <div class="w3-col l6 " style="padding: 2% 3%; width: 80%;">
                    <asp:DataList ID="DataList1" runat="server" Width="529px" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="col-md-12" >
                            <div class="card mx-2" >
                                <div class="card-body" >
                            <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" ImageUrl='<%# Eval("topic_image") %>' />
                                    </div>
                                </div>
                                </div>
                        </ItemTemplate>
                    </asp:DataList>
                   </div>
        </div>
    </div>
</asp:Content>
