<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PseudoSelectors.aspx.cs" Inherits="WebDev2016.Week5.PseudoSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        div {
            font-size: 40px;
        }
        /* find the paragraph that is also the first child */
        .mainText p:first-child {
            color: red;
        }
        /*vs old style */
        .mainText .intro {
            color: red;
        }

        .mainText p.pseudoelement::first-letter {
            color: red;
            font-weight: bold;
            font-size: 2em;
        }
        /* vs old style */
        .mainText span.firstLetter {
            color: red;
            font-weight: bold;
            font-size: 2em;
        }

        .message {
            width: 300px;
            height: 150px;
            text-align: center;
            border: 1px solid #808080;
            background-color: #f6f6f6;
        }

            .message:hover {
                background-color: #a5dcb4;
                font-weight: bold;
                cursor:pointer;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Pseudo Selectors</h2>
    <div class="mainText">
        <p class="intro">some intro text</p>
        <p>Some more text</p>
        <p>Some more text still</p>
        <p></p>
        <p class="pseudoelement">This is awsome stuff! (new)</p>
        <p><span class="firstLetter">T</span>his is awsome stuff! (old)</p>
    </div>
    <div class="message">OK I get the message!</div>
</asp:Content>
