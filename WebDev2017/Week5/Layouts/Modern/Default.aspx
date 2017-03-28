<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDev2016.Week5.Layouts.Modern.Default" %>

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
    <h2>Modern Layouts</h2>
    <ul class="inpage">
        <li class="dropdown-header">HTML5 Semantic Layout</li>
        <li><a href="1Html5SemanticLayout.aspx">HTML5 Semantic vs Div</a></li>
        <li class="dropdown-header">CSS3 Modern Layout</li>
        <li><a href="2Html5FlexBox.aspx">CSS3 FlexBox</a></li>
        <li><a href="/Week5/FlexBox/FlexBoxPacking.aspx"><b>FlexBox Packing</b></a></li>
        <li><a href="/Week5/FlexBox/FlexBoxOrder.aspx"><b>FlexBox Order</b></a></li>

        <li><a href="3HTMLGridLayout.aspx">CSS3 Grid Layout</a></li>
    </ul>
</asp:Content>
