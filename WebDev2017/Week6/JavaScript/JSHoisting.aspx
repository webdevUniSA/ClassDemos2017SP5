<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JSHoisting.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.JSHoisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script>
        var onready = function () {
            /* call the functions before they have been defined */
            log(f1()); // works
            log(f2()); // breaks
            log("this");

            /* classic syntax of a function */
            function f1() { }

            /* variable/object syntax for a function */
            var f2 = function () { };
        }

        function log(msg) {
            document.getElementById("script").innerHTML = onready.toString().replace(/(?:\r\n|\r|\n)/g, '<br />');

            var div = document.getElementById("log");
            div.innerHTML += msg + "<br />";
        }
    </script>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <div id="script"></div>
    <h1>JavaScript Demo</h1>
    <div id="log"></div>
    <script>onready();</script>
</asp:Content>
