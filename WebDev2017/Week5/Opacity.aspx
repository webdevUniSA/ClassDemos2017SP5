<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Opacity.aspx.cs" Inherits="WebDev2016.Week5.Opacity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        div {
            font-size: 40px;
        }

        #div1 {
            background: red;
            opacity: 0.5;
        }

        #div2 {
            background: rgba(255,0,0, 0.50);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Opacity Tests</h2>
    <div id="div1">
        <p>Some text to check transpearancy</p>
    </div>
    <div id="div2">
        <p>Some text to check transpearancy</p>
    </div>
</asp:Content>
