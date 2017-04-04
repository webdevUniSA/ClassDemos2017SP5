<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CssDemo.aspx.cs" Inherits="WebDev2017.Week6.CssDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #demo div {
            border: 2px solid black;
            height:100px;
            width:25%;
            /*display:inline;*/
            float:left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div id="demo">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</asp:Content>
