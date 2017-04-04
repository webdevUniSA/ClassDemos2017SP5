<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JQueryMethods.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.JQueryMethods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // see http://stackoverflow.com/questions/9122078/difference-between-onclick-vs-click
            $("#BClick").click(function () {
                alert("Click() triggered");
            });

            $("#BOnClick").on("click", function () {
                alert("Click event listner triggered");
            });

            $("body").on("click", "button.BDelegate", function () {
                alert("click delegate triggered");
            });

            $("#BAppend").on("click", function () {
                $("#content p").append(" <span style='color:darkred; font-weight:bold;'>This is new text</span>");
                return false;
            })

            $("#BHtml").on("click", function () {
                $("#content p").html("<span style='color:darkred; font-weight:bold;'>This is replacement html</span>");
                return false;
            });

            $("#BText").on("click", function () {
                $("#content p").text("<span style='color:darkgreen; font-weight:bold;'>The text was changed</span>");
                return false;
            });

            $("#BValue").on("click", function () {
                $("input[type=text]").val("Some Text Entered");
                return false;
            });

            $("#BCss").on("click", function () {
                $("#content p").css("font-size", "2em");
                //$("#content p").css({
                //    "font-size": "2em",
                //    "color": "blue",
                //    "padding-top": "50px"
                //});
                return false;
            });

            $("#BAttr").on("click", function () {
                $("input [type=text]").attr("required");
                $("#content p").append("<br><span>'Required' was added to the textbox</span'>");
                //$("#form1").submit(); does not work
            });

            $("button[type=reset]").on("click", function () {
                var reset = confirm("Are you sure you want to reset the page?");
                if (reset) {
                    $("#content").html("<h4>Content</h4><p>A paragraph of text is like a string of unknown length</p>");
                }
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <button id="BClick">click()</button>
    <button id="BOnClick">.on("click")</button>
    <button class="BDelegate">.on("body", "click")</button>
    <button id="BAppend">$("p").append()</button>
    <button id="BHtml">$("p").html()</button>
    <button id="BText">$("p").text()</button>
    <button id="BValue">$(input).val()</button>
    <button id="BCss">$("p").css()</button>
    <button type="submit" id="BAttr">$("p").attr()</button><br />
    <button type="reset">Reset</button>
    <div id="content">
        <h4>Content</h4>
        <p>A paragraph of text is like a string of unknown length</p>
    </div>
    <label>
        Input Field:<br />
        <input type="text" placeholder="This is empty. . ." />
    </label>
</asp:Content>
