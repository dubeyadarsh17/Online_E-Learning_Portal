<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="Online_E_Learning_System.forgotpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card text-center my-5" style="width: 300px; margin-left:auto;margin-right:auto">
                <div class="card-header h5 ">Password Reset</div>
                <div class="card-body px-5">
                    <p class="card-text py-2">
                        Enter your email address and we'll send you an email with instructions to reset your password.
                    </p>
                    <div class="form-outline">
                        <input type="email" id="typeEmail" runat="server" placeholder="Enter Your Email" class="form-control my-3" />
                    </div>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="send_email" class="btn btn-dark w-100">LinkButton</asp:LinkButton>
                    <div class="d-flex justify-content-between mt-4">
                        <a class="" href="#">Login</a>
                        <a class="" href="#">Register</a>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
