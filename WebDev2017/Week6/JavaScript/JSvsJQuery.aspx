<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JSvsJQuery.aspx.cs" Inherits="WebDev2016.Week6.JSvsJQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script src="../../Scripts/jquery-1.10.2.js"></script>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <ul class="dummy">
        <li>Item 1</li>
        <li>Item 2</li>
    </ul>
    <button class="test">Add Item JQ</button>
    <button id="btn">Add Item JS</button>


    <script>
        /*
        // alternative event listner declaration to below
        $("button.test").click(function (e) { 
            var count = $("ul.dummy").find("li").length;
            $("ul.dummy").append("<li>Dynamic Item " + (count + 1) + "</li>");
            e.preventDefault();
            return false;
        }); //, false);  // this was causing the problem earlier
        */

        // preferred event listner declaration in JQuery
        $("button.test").on("click", function (e) {
            var count = $("ul.dummy").find("li").length;
            $("ul.dummy").append("<li>Dynamic JQ Item " + (count + 1) + "</li>");
            e.preventDefault();
        }); 

        var btn = document.getElementById("btn");
        btn.addEventListener("click", function (e) {
            var count = document.querySelector("ul.dummy").childElementCount;
            var li = document.createElement("li");
            li.appendChild(document.createTextNode("Dynamic JS Item " + (count + 1)));
            document.querySelector("ul.dummy").appendChild(li);
            e.preventDefault();
        });
    </script>
</asp:Content>
