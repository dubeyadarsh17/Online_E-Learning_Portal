<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="login.aspx.cs" Inherits="Online_E_Learning_System.login" %>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style>
        .divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }

        .h-custom {
            height: calc(100% - 73px);
        }

        @media (max-width: 450px) {
            .h-custom {
                height: 100%;
            }
        }
    </style>
    <script type="text/javascript">
        function userValidforlogin() {
           
            var gmail, password;
            gmail = document.getElementById("txtemail").value;
            password = document.getElementById("txtpassword").value;
            var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id 
           /* var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;*/
            if (gmail == '') {
                alert("Enter gmail Field")
                return false;
            }
            if (!gmail.match(emailExp)) {
                alert("Invalid Email Id");
                return false;
            }
            if (password == '') {
                alert("Enter Password Field")
                return false;
            }
            //if (!password.match(passw)) {
            //    alert("Invalid password")
            //    return false;
            //}
            return true;
        }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <section class="vh-100">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                        class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" style="margin-top: 150px">
                    
                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>

                        <!-- Email input -->
                        <div class="form-outline mb-4 ">
                            <input type="email" id="txtemail" runat="server" validationgroup="log" class="form-control form-control-lg"
                                placeholder="Enter a valid email address" />
                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ValidationGroup="log" ErrorMessage="email is  empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ValidationGroup="log" ErrorMessage="Invaild email" ForeColor="blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input type="password" id="txtpassword" runat="server" validationgroup="log" class="form-control form-control-lg"
                                placeholder="Enter password" />
                            <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="password is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic" ValidationGroup="log"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="txtpassword" ValidationGroup="log" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>
                        </div>

                        <div class="d-flex justify-content-between align-items-center">
                            <!-- Checkbox -->
                            <div class="form-check mb-0">
                            </div>
                            <a href="forgotpass.aspx" class="text-body">Forgot password?</a>

                        </div>


                        <div class="text-center text-lg-start mt-4 pt-2">
                            <asp:Button ID="Button1" runat="server" Text="Login" OnClientClick="return userValidforlogin();" ValidationGroup="log" class="btn btn-primary btn-lg"
                                Style="padding-left: 2.5rem; padding-right: 2.5rem;" OnClick="Button1_Click" />

                            <p class="small fw-bold mt-2 pt-1 mb-0">
                                Don't have an account? <a href="register.aspx"
                                    class="link-danger">Sinup</a>
                            </p>
                        </div>
                </div>
            </div>
        </div>
    </section>
       </div>
    </form>
</body>
</html>
<%--</asp:Content>--%>

