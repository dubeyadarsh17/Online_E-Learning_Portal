<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maindashboard.aspx.cs" Inherits="Online_E_Learning_System.maindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* Custom style */
         *{
            margin:0;
            padding:0;
        }
      /*  .navbar {
            margin-bottom: 1rem;
        }*/
    </style>
</head>
<body>
    <form runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a href="#" class="navbar-brand">Adarsh E-Learning</a>
                    <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse1">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="collapse navbar-collapse" id="navbarCollapse1">
                        <div class="navbar-nav">
                            <a href="#" class="nav-item nav-link active">Home</a>
                            <asp:DropDownList ID="DropDownList1" class="nav-item nav-link" style="background:transparent "  runat="server">

                            </asp:DropDownList>
                            <a href="#" class="nav-item nav-link">About</a>
                            <a href="#" class="nav-item nav-link">Products</a>
                        </div>
                        <div class="d-flex ms-auto">
                            <input type="text" class="form-control me-sm-2" placeholder="Search"/>
                            <button type="submit" class="btn btn-outline-light">Search</button>
                        </div>
                        <div class="nav-item">
                            <a class="nav-link" style="color:white" href="login.aspx">Login</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div>

        </div>
    </form>
</body>
</html>
