<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="Online_E_Learning_System.changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript">

        function validpass() {
            var conpass, newpass, oldpass;
            oldpass = document.getElementById("ContentPlaceHolder1_oldpass").value;
            newpass = document.getElementById("ContentPlaceHolder1_newpass").value;
            conpass = document.getElementById("ContentPlaceHolder1_conpass").value;
            // to validate email id 
            var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
            if (oldpass == '') {
                alert("Enter old password Field")
                return false;
            }
            if (newpass == '') {
                alert("Enter New Password Field")
                return false;
            }
            if (!newpass.match(passw)) {
                alert("Password is must be strong");
                return false;
            }
            if (conpass == '') {
                alert("Enter Confirm Password Field")
                return false;
            }
            if (!conpass == newpass) {
                alert("Password must be match Newpassword")
                return false;
            }
            return true;
        }

    </script>
    <script>
        $(document).ready(function () {
            $('#subbtn').mouseenter(function () {
                $('#subbtn').css('background-color', 'red');
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 200px">
        <section class="vh-100 ">
            <div class="container py-5">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="d-flex justify-content-center ">Change Password</h3>
                                <div class="row">
                                    <div class="col my-2">
                                        <asp:Label runat="server" Text="Current Password"></asp:Label>
                                        <asp:TextBox ID="oldpass" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col my-2">
                                        <asp:Label runat="server" Text="New Password"></asp:Label>
                                        <asp:TextBox ID="newpass" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col my-2">
                                        <asp:Label runat="server" Text="Confirm Password"></asp:Label>
                                        <asp:TextBox ID="conpass" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col my-3">
                                        <div class="d-flex justify-content-center">
                                            <asp:Button ID="subbtn" OnClientClick="return validpass();" OnClick="chan_pass" class="btn btn-primary" runat="server" Text="Submit" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
