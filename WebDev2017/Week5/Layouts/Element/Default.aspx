<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDev2016.Week5.Layouts.Element.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        .inpage {
            font-size: 1.4em;
        }

            .inpage .dropdown-header {
                margin-top: 50px;
                font-size: 1.2em;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <h2>Element Layouts</h2>
    <ul class="inpage">
        <li class="dropdown-header">Display Property</li>
        <li><a href="1DisplayProperty.aspx">Block vs Inline</a></li>
        <li><a href="2DisplayProperty.aspx">Inline Images</a></li>
        <li><a href="3DisplayProperty.aspx">Inline-block Images</a></li>
        <li class="dropdown-header">Floats & Images</li>
        <li><a href="4ImageFloat.aspx">Floats and Images</a></li>
    </ul>
</asp:Content>
