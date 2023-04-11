﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserNavbar.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Online_E_Learning_System.loginpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');

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
            width: 400px;
            background: white;
            border-radius: 10px;
            box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
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
        .pass a {
                color: #2691d9;
                text-decoration: none;
            }

                .pass a:hover {
                    text-decoration: underline;
                }
/*
            .pass:hover {
                text-decoration: underline;
            }*/

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
        function userValidforlogin() {
            var gmail, password;
            gmail = document.getElementById("ContentPlaceHolder1_txtemail").value;
            password = document.getElementById("ContentPlaceHolder1_txtpassword").value;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <h1>Login</h1>
       
            <div class="txt_field">
                <input type="email" id="txtemail" runat="server" validationgroup="log" required>
                <span></span>
                <label>Email Id</label>
            </div>
            <div class="txt_field">
                <input type="password" id="txtpassword" runat="server" validationgroup="log" required>
                <span></span>
                <label>Password</label>
            </div>
            <div class="pass">
                <a href="forgotpass.aspx">Forget Password</a>
            </div>
            <div class="text-center">
                <asp:Button ID="Button1" OnClick="Button1_Click" OnClientClick="return userValidforlogin();" validationgroup="log" runat="server" Text="Login"  />
               <%-- <input type="submit" onclick="Button1_Click" validationgroup="log" value="Login">--%>
            </div>
            <div class="signup_link">
                Not a member? <a href="registerpage.aspx">Signup</a>
            </div>
        </div>
   
</asp:Content>
