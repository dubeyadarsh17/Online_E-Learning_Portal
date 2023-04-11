<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="pdfreaderpage.aspx.cs" Inherits="Online_E_Learning_System.pdfreaderpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style>
        body {
    background-color: #eee
}

.card {
    border: none;
    border-radius: 10px
}

.c-details span {
    font-weight: 300;
    font-size: 13px
}

.icon {
    width: 50px;
    height: 50px;
    background-color: #eee;
    border-radius: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 39px
}

.badge span {
    background-color: #fffbec;
    width: 60px;
    height: 25px;
    padding-bottom: 3px;
    border-radius: 5px;
    display: flex;
    color: #fed85d;
    justify-content: center;
    align-items: center
}

.progress {
    height: 10px;
    border-radius: 10px
}

.progress div {
    background-color: red
}

.text1 {
    font-size: 14px;
    font-weight: 600
}

.text2 {
    color: #a5aec0
}
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1">
        <div>
            <div class="container mt-5 mb-3">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card p-3 mb-2">
                            <div class="mt-3">
                                <asp:Image ID="Image1" Height="250px" Width="100%" ImageUrl="" runat="server" />
                                <div class="mt-5">
                                    <div class="">
                                        <%--<div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>--%>
                                        <asp:Button ID="btnviewpdf" runat="server" Text="" Width="200px" OnClick="btnviewpdf_Click" />
                                    </div>
                                   <%-- <asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card p-3 mb-2">
                            <div class="mt-3">
                                <asp:Image ID="Image2" Height="250px" Width="100%" ImageUrl="" runat="server" />
                                <div class="mt-5">
                                    <div class="">
                                        <%--  <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>--%>
                                        <asp:Button ID="Button1" runat="server" Text="" Width="200px" OnClick="view_image" />
                                    </div>
                                 <%--   <div class="mt-3"><span class="text1">42 Applied <span class="text2">of 70 capacity</span></span> </div>--%>
                                   <%-- <asp:Label ID="Label2" runat="server" Text=""></asp:Label>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card p-3 mb-2">
                            <div class="mt-3">
                                <asp:Image ID="Image3" Height="250px" Width="100%" ImageUrl="" runat="server" />
                                <div class="mt-5">
                                    <div class="">

                                        <%--<div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>--%>
                                        <asp:Button ID="Button2" runat="server" Text="" Width="200px" OnClick="view_video" />
                                    </div>
                                    <%--<div class="mt-3"><span class="text1">52 Applied <span class="text2">of 100 capacity</span></span> </div>--%>
                                   <%-- <asp:Label ID="Label3" runat="server" Text=""></asp:Label>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%-- <fieldset style="width: 250px;">
                <legend>how to open/view PDF file</legend>
                <asp:Button ID="btnviewpdf" runat="server" Text="View e-book" Width="200px"
                    OnClick="btnviewpdf_Click" />
            </fieldset>--%>
        </div>
    </form>
</asp:Content>
