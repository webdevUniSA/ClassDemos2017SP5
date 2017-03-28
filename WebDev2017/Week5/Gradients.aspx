<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gradients.aspx.cs" Inherits="WebDev2016.Week5.Gradients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        .gradients div {
            border: 1px solid darkgray; /* for browsers that don't show gradients */
            padding: 20px;
            width: 400px;
            height: 100px;
        }

            /* Note that gradient colours can be hex values */
            /* standard top to bottom */
            .gradients div:nth-child(1) {
                background: linear-gradient(darkgray, white);
            }

            /* gradient left to right */
            .gradients div:nth-child(2) {
                background: linear-gradient(to right, darkgray, white);
            }

            /* gradient by angle from top left */
            .gradients div:nth-child(3) {
                background: linear-gradient(-30deg, darkgray, white);
            }

            /* radial gradient */
            .gradients div:nth-child(4) {
                background: radial-gradient(darkgray, white);
            }
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>CSS Gradients</h2>
    <div class="gradients">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <p>For more detailed examples see <a href="http://www.w3schools.com/css/css3_gradients.asp" target="_blank">W3 Schools</a></p>
</asp:Content>
