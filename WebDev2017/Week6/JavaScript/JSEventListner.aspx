<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JSEventListner.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.EventListner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">

    <button id="BClick">Click!</button><br />
    <button onclick="fireHandler(event)">Click to Activate Handler!</button>
    <hr />
    <div id="content" style="display: none">Show some content</div>

    <script>

        function fireHandler(e) {
            var content = document.getElementById("content");
            if (content.style.display == "none") {
                content.style.display = "block";
            }
            else { content.style.display = "none"; }
            e.preventDefault();
        }



        function toggleContent(e) {
            var content = document.getElementById("content");
            if (content.style.display == "none") {
                content.style.display = "block";
            }
            else { content.style.display = "none"; }
            e.preventDefault();
        } // end toggleContent

        var button = document.getElementById("BClick");
        button.addEventListener("click", toggleContent, false);
    </script>

</asp:Content>
