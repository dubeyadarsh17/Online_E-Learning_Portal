<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="pdfpreview.aspx.cs" Inherits="Online_E_Learning_System.pdfpreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/web/bootstrap-theme/ej.web.all.min.css" rel="stylesheet" />
    <script src="assets/external/jquery-2.1.4.min.js"></script>
    <script src="assets/scripts/web/ej.web.all.min.js"></script>
 <script>      
        function loadDocument(event) {
            var documentName = $("#documentName").val();
            var jsonObject = new Object();
            if (documentName != "") {
                jsonObject['documentName'] = documentName;
                var jsonResult = JSON.stringify(jsonObject);
                $.ajax({
                    type: "POST",
                    url: '../api/PdfViewer/DocumentRetrieve',
                    crossDomain: true,
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    data: jsonResult,
                    traditional: true,
                    success: function (data) {
                        openDoc(data);
                    }
                });
            }
        }
        function openDoc(data) {
            var obj = $("#pdfviewer1").data("ejPdfViewer");
            obj.load(data);
        }
 </script>  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <label>Enter the document name:</label>
        <input id="documentName" />
        <button id="load" onclick="loadDocument(event)" type="button">Load</button>
        <div class="content-container-fluid">
            <div class="row">
                <div class="cols-sample-area">
                    <div class="control">
                        <div id="pdfviewer">
                            <ej:pdfviewer id="pdfviewer1" height="800" serviceurl="/api/PdfViewer" runat="server">
                            </ej:pdfviewer>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
