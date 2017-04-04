<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JSVariables.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.JSVariables" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script>

        /* a function declared like a variable so we can print it out */
        var onready = function () {
            // alert(onready);
            var myString = "hello world";
            var myBoolean = true;
            var myEmpty = null;
            var myUndefined;
            var calc = 5 + '5';
            var calc2 = 5 + parseInt('5');

            log("String: " + myString);
            log("Boolean: " + myBoolean);
            log("Empty: " + myEmpty);
            log("Undefined: " + myUndefined);
            log("calc: " + calc);
            log("calc2: " + calc2);
            log("calc == 55: " + (calc == 55)); // is calc = 55 (string or int) after type conversion to int if necessary
            log("calc == 55: " + (calc === 55)); // is calc = 55 without type conversion (is it an int 55)
            log("calc2 == 10: " + (calc2 == 10)); // is calc = 10 (string or int) after type conversion to int if necessary
            log("calc2 == 10: " + (calc2 === 10)); // is calc = 10 without type conversion (is it an int 10)
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
