<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="upadtecoursecontent.aspx.cs" Inherits="Online_E_Learning_System.upadtecoursecontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" />
    <%--<link href="BootStrap/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
  <script src="BootStrap/css/dataTables.bootstrap5.min.js"></script>--%>
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#my').DataTable({
                "lengthChange": false,
                "bFilter": false
            });

        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 230px">
        <div class="card">
            <div class="card-header">
                <asp:DropDownList ID="Dropdown" AutoPostBack="true" Style="border: solid;" OnSelectedIndexChanged="Dropdown_SelectedIndexChanged" class="select dropdown-toggle form-control-lg" runat="server"></asp:DropDownList>
            </div>
            <div class="card-body">
                <div class="blockquote mb-0">
                    <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                        <HeaderTemplate>
                            <table class="tblcolor" id="my">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Course Title</th>
                                        <th>Course Image</th>
                                        <th>Course Content</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="tblrowcolor">
                                <td>
                                    <asp:Label ID="label1" runat="server" Text='<%# Bind("course_id") %>'></asp:Label>

                                </td>
                                <td>
                                    <asp:Label ID="label2" runat="server" Text='<%# Bind("course_title") %>'></asp:Label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" Style="float: left; margin-right: 30px; width: 100px;" Visible="false" Text='<%# Bind("course_title") %>' runat="server"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:Image ID="Image1" Height="80px" Width="80px" ImageUrl='<%# Bind("thumb_image") %>' runat="server" />
                                    <asp:FileUpload ID="FileUpload1"  CssClass="form-control" Style="float: left; margin-right: 30px; width: 200px;" runat="server" Visible="false" />

                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("course_content") %>'></asp:Label>
                                    <asp:FileUpload ID="FileUpload2"  CssClass="form-control" Style="float: left; margin-right: 30px; width: 250px;" runat="server" Visible="false" />
                                </td>

                                <td>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-secondary" CommandName="editbtn" Text="Edit"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-danger" CommandName="deletebtn" Text="Delete"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" Visible="false" CommandName="updatebtn" Text="Update"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" Visible="false" CommandName="cancelbtn" Text="Cancel"></asp:LinkButton>
                                </td>
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
