<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NthSelectors.aspx.cs" Inherits="WebDev2016.Week5.NthSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        div.pseduo div {
            display: inline-block;
            width: 40px;
            height: 40px;
        }

            div.pseduo div:nth-child(2n+1) {
                background-color: red;
            }

            div.pseduo div:nth-child(2n+2) {
                background-color: green;
            }

        /*  
               div.pseduo div:nth-child(3n+1) {
                background-color: red;
            }

          div.pseduo  div:nth-child(3n+2) {
                background-color: green;
            }

             div.pseduo div:nth-child(3n+3) {
                background-color: blue;
            } */
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Nth Selectors</h2>
    <div class="pseduo">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
</asp:Content>
