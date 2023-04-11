<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="viewUser.aspx.cs" Inherits="Online_E_Learning_System.viewUser" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 230px">
        <div class="card">
            <div class="card-header">
                <h3><b> Show Register User</b> </h3>
               <%-- <asp:DropDownList ID="Dropdown" AutoPostBack="true" Style="border: solid;"  class="select dropdown-toggle form-control-lg" runat="server"></asp:DropDownList>--%>
            </div>
            <div class="card-body">
                <div class="blockquote mb-0">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <HeaderTemplate>
                            <table class="tblcolor " id="my">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>UserType</th>
                                     <%--   <th>Action</th>--%>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="tblrowcolor">
                                <td>
                                    <asp:Label ID="label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>

                                </td>
                                <td>
                                    <asp:Label ID="label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>

                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                    <asp:FileUpload ID="fileupload2" runat="server" Visible="false" />

                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("usertype") %>'></asp:Label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="false" />
                                </td>

                               <%-- <td>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-secondary" CommandName="editbtn" Text="Edit"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" Visible="false" CommandName="updatebtn" Text="Update"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" Visible="false" CommandName="cancelbtn" Text="Cancel"></asp:LinkButton>
                                </td>--%>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>  
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>