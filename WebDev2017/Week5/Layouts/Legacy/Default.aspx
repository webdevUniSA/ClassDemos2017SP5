<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDev2016.Week5.Layouts.Legacy.Default" %>

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
    <h2>Legacy Layouts</h2>
    <ul class="inpage">
        <li class="dropdown-header">Tables & Divs</li>
        <li><a href="1Table.aspx">Table Layout</a></li>
        <li><a href="2TableVsDiv.aspx">Table vs Div Layout</a></li>
        <li><a href="3FloatedDivs.aspx">Floated Div Layout</a></li>
        <li class="dropdown-header">Positioned Divs</li>
        <li><a href="4PositionedDivs.aspx">Absolute Layout</a></li>
    </ul>
</asp:Content>
