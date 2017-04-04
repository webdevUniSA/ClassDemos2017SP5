<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VariableDeclaration.aspx.cs" Inherits="WebDev2016.Week6.JavaScript.VariableDeclaration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <script>

    function onready() {
    var myString = "hello world";
    var myBoolean = true;
    var myNumber = 10;
    var myFloat = 10.111;
    var myEmpty = null;
    var myUndefined; // undefined!
    alert("myUndefined: " + myUndefined);
    }

   var onready2 = function () {
        var myString = "hello world";
        var myBoolean = true;
        var myNumber = 10;
        var myFloat = 10.111;
        var myEmpty = null;
        var myUndefined; // undefined!
        alert("myUndefined: " + myUndefined);
    }
    </script>

    <script>
        // onready();
        onready2();
    </script>
</asp:Content>
