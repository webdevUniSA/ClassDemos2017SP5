<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BoxSizing.aspx.cs" Inherits="WebDev2016.Week6.BoxSizing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #inlineDemo div {
            width: 25%;
            float: left;
            border: 2px solid red;
            height: 20px;
            box-sizing: content-box;
        }

       

        #boxDemo div {
            width: 200px;
            height: 200px;
            border: 5px solid #000;
            padding: 20px;
        }

        /*box-sizing*/
        #contentBox {
            box-sizing: content-box;
        }

        #paddingBox {
            -moz-box-sizing: padding-box;
            -webkit-box-sizing: padding-box;
            box-sizing: padding-box;
        }

        #borderBox {
            box-sizing: border-box;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div id="inlineDemo">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <br style="clear:both" />
    <div id="boxDemo">
        <div id="contentBox"><strong>content-box</strong></div>
        <div id="paddingBox"><strong>padding-box</strong> (doesn't exist?)</div>
        <div id="borderBox">
            <strong>border-box.</strong><br />
            Note how the border AND padding is built into the total width
        </div>
    </div>
</asp:Content>
