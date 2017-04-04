<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JQueryListnerVsDelegate.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.JQueryListnerVsDelegate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script src="../../Scripts/jquery-1.10.2.js"></script>
    <style>
        #listnerExample li {
            display: block;
            max-width:100px;
            padding: 5px 10px;
        }

            #listnerExample li:hover {
                cursor: pointer;
                background-color: #c6c6c6;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <div id="listnerExample">
        <ul>
            <li>Item 1</li>
            <li>Item 2</li>
        </ul>
    </div>
    <button>Add New List Item</button>
    <p>Click on the items to see if the mouse event is detected by an <strong>Event Listner</strong> or <strong>Delegate</strong> or both.</p>

    <script>
        $("button").on("click", function () {
            var count = $("#listnerExample ul").find("li").length;
            $("#listnerExample ul").append("<li>Item " + (count + 1) + "</li>");
            return false;
        });

        $("#listnerExample li").on("click", function () {
            alert("Listner: " + $(this).text());
        });

        $("#listnerExample ul").on("click", "li", function () {
            alert("Delegate: " + $(this).text());

        });

    </script>

</asp:Content>
