<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs"  MasterPageFile="~/Dashboard.Master"   Inherits="Online_E_Learning_System.regiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head >
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="styles.css" />
        <script type="text/javascript">
            function userValid() {
                var name, gmail, password, password1, emailExp;
                name = document.getElementById("ContentPlaceHolder1_txtname").value;
                gmail = document.getElementById("ContentPlaceHolder1_txtemail").value;
                password = document.getElementById("ContentPlaceHolder1_txtpassword").value;
                password1 = document.getElementById("ContentPlaceHolder1_txtpass").value;
                emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id 
                var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;

                if (name == '' && gmail == '' && password == '' && password1 == '') {
                    alert("Enter All Field")
                    return false;
                }
                if (name == '') {
                    swal("Enter Name Field")
                    return false;
                }
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
                if (!password.match(passw)) {
                    alert("Invalid password")
                    return false;
                }
                if (password1 == '') {
                    alert("Enter Repeat Password Field")
                    return false;
                }
                if (password != password1) {
                    alert("Repeat Password is not match")
                    return false;
                }
                return true;
            }
    </script>
    </head>
    <body>
        <form id="form1">
            <section class="vh-100" style="background-color: #eee;">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-11">
                            <div class="card text-black" style="border-radius: 25px;">
                                <div class="card-body p-md-5">
                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                            <div class="mx-1 mx-md-4">

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="hi fas fa-user fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <input type="text" id="txtname" placeholder="Your Name" runat="server" validationgroup="regi" class="form-control" />
                                                        <%-- <label class="form-label" for="form3Example1c"></label>--%>
                                                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ValidationGroup="regi" ErrorMessage="name is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" ValidationGroup="regi" ErrorMessage="please enter only name" ForeColor="blue" ValidationExpression="^[-a-zA-Z-()]+(\s[-a-zA-Z-()]+)*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                        --%>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="hi fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <input type="email" id="txtemail" runat="server" placeholder="Your Email" validationgroup="regi" class="form-control" />
                                                        <%--<label class="form-label" for="form3Example3c"></label>--%>
                                                        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ValidationGroup="regi" ErrorMessage="email is  empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ValidationGroup="regi" ErrorMessage="Invaild email" ForeColor="blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                                                        --%>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="hi fas fa-lock fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <input type="password" id="txtpassword" runat="server" placeholder="Password" validationgroup="regi" class="form-control" />
                                                        <%-- <label class="form-label" for="form3Example4c"></label>--%>
                                                        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="password is empty" ForeColor="blue" SetFocusOnError="True" Display="Dynamic" ValidationGroup="regi"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="txtpassword" ValidationGroup="regi" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                        --%>
                                                    </div>
                                                </div>

                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="hi fas fa-key fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <input type="password" id="txtpass" runat="server" placeholder="Repeat Your Password" validationgroup="regi" class="form-control" />
                                                        <%--<label class="form-label" for="form3Example4cd"></label>--%>
                                                                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="confirm password is empty" ControlToValidate="txtpass" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="regi"></asp:RequiredFieldValidator>
                                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$" ControlToValidate="txtpass" ErrorMessage="Invaild Password" ForeColor="blue" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                         <asp:CompareValidator ID="CV1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="your pass must be same your new password" ForeColor="Red" SetFocusOnError="True" ValidationGroup="regi"></asp:CompareValidator>
                                                        --%>
                                                    </div>
                                                </div>

                                                <%-- <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                    <label class="form-check-label" for="form2Example3">
                      I agree all statements in <a href="#!">Terms of service</a>
                    </label>
                  </div>--%>

                                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">

                                                    <asp:Button ID="Button1" runat="server" OnClientClick="return userValid();" Text="Register" class="btn btn-primary" OnClick="Button1_Click" ValidationGroup="regi" />
                                                    <%--<button type="button" runat="server" class="btn btn-primary btn-lg" OnClick="Button1_Click">Register</button>--%>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                                class="img-fluid" alt="Sample image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </body>
    </html>
</asp:Content>
