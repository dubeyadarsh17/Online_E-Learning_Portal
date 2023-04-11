<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminNavbar.Master" CodeBehind="course_update.aspx.cs" Inherits="Online_E_Learning_System.admin_homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- css cdn--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <%--javascript cdn--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
 
    <style>
        .gradient-custom {
            /* fallback for old browsers */
            background: #f093fb;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to bottom right, rgba(240, 147, 251, 1), rgba(245, 87, 108, 1))
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }
        .back{
          background-image: url("/image/background.jpg");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="back">
        <section class="vh-100  ">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration" style="border-radius: 15px; ">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Insert Course </h3>
                                <div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="C_title" runat="server" class="form-control form-control-lg" />
                                                <label class="form-label" for="C_title">Course Title</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="V_link" runat="server" class="form-control form-control-lg" />
                                                <label class="form-label" for="V_link">Course Related Video Link</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <asp:FileUpload ID="thumbImg" class="form-control form-control-lg" runat="server" />
                                                <label class="form-label" for="thumbImg">Course Thumbnail Image</label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <asp:FileUpload ID="C_content" class="form-control form-control-lg" runat="server" />
                                                <label class="form-label" for="C_content">Course Content</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                  <input type="text" id="txtauthor" runat="server" class="form-control form-control-lg" />
                                                <label class="form-label" for="txtauther">Book Author Name</label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class=" pt-2">
                                       <%-- <input class="btn btn-primary btn-lg" type="submit" value="Submit" />--%>
                                        <asp:Button ID="Button1" class="btn btn-primary btn-lg" OnClick="Button1_Click" runat="server" Text="Submit" />
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

