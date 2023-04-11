<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="changeteacherprofile.aspx.cs" Inherits="Online_E_Learning_System.changeteacherprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
*/
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            /*background: linear-gradient(120deg,#2980b9, #8e44ad);*/
            background-color: #D3D3D3;
            height: 100vh;
            overflow: hidden;
        }

        .center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 500px;
            background: white;
            border-radius: 10px;
            box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
            margin-top: 26px;
        }

            .center h1 {
                text-align: center;
                padding: 20px 0;
                border-bottom: 1px solid silver;
            }

            .center form {
                padding: 0 40px;
                box-sizing: border-box;
            }

        form .txt_field {
            position: relative;
            border-bottom: 2px solid #adadad;
            margin: 30px 0;
        }

        .txt_field input {
            width: 100%;
            padding: 0 5px;
            height: 40px;
            font-size: 16px;
            border: none;
            background: none;
            outline: none;
        }
        .txt_field label {
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            font-size: 16px;
            pointer-events: none;
            transition: .5s;
        }

        .txt_field span::before {
            content: '';
            position: absolute;
            top: 40px;
            left: 0;
            width: 0%;
            height: 2px;
            background: #2691d9;
            transition: .5s;
        }

        .txt_field input:focus ~ label,
        .txt_field input:valid ~ label {
            top: -5px;
            color: #2691d9;
        }

        .txt_field input:focus ~ span::before,
        .txt_field input:valid ~ span::before {
            width: 100%;
        }

        .pass {
            margin: -5px 0 20px 5px;
            color: #a6a6a6;
            cursor: pointer;
        }

            .pass:hover {
                text-decoration: underline;
            }

        input[type="submit"] {
            width: 50%;
            height: 50px;
            border: 1px solid;
            background: #2691d9;
            border-radius: 25px;
            font-size: 18px;
            color: #e9f4fb;
            font-weight: 700;
            cursor: pointer;
            outline: none;
        }

            input[type="submit"]:hover {
                border-color: #2691d9;
                transition: .5s;
            }

        .signup_link {
            margin: 30px 0;
            text-align: center;
            font-size: 16px;
            color: #666666;
        }

            .signup_link a {
                color: #2691d9;
                text-decoration: none;
            }

                .signup_link a:hover {
                    text-decoration: underline;
                }
    </style>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <h1>Register Teacher</h1>
        <form method="post">
            <div class="txt_field">
                <input id="txtname" runat="server" type="text" required>
                <span></span>
                <label>Name</label>
            </div>
            <div class="txt_field">
                <input id="txtemail" runat="server" type="email" required>
                <span></span>
                <label>Email Id</label>
            </div>
            <div class="txt_field">
                <input id="txtpassword" runat="server" type="password" required>
                <span></span>
                <label>Password</label>
            </div>
            <div class="txt_field">
                <input id="txtpass" runat="server" type="password" required>
                <span></span>
                <label>Confirm Password</label>
            </div>
            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClientClick="return userValid();" OnClick="Button1_Click1" ValidationGroup="reg" />
                <%--<input type="submit" value="Register">--%>
            </div>

            <div class="signup_link ">
            </div>
        </form>
    </div>
</asp:Content>
