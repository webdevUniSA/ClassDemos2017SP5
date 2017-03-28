<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetVsNormalise.aspx.cs" Inherits="WebDev2017.Week5.ResetVsNormalise.ResetVsNormalise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <link href="/Content/Reset.css" rel="stylesheet" />
    <style>
        /** {
            font-size:16px;
            border:none;
            margin:0;
            padding:0;
        }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron text-center">
        <h2>CSS Reset Vs Normalise</h2>
    </div>
    <div class="row">
        <div class="normalise col-md-6">
            <h3>Normalised CSS</h3>
            <ul>
                <li>List Item</li>
                <li>List Item</li>
                <li>List Item</li>
                <li>List Item</li>
                <li>List Item</li>
            </ul>
            <h1>Big letters</h1>
            <h2>Less big of letters</h2>
            <h3>Getting smaller</h3>
            <h4>Hello world</h4>
            <h5>Kid Rock</h5>
            <h6>Ant man</h6>
        </div>
        <div class="col-md-6">
            <h3>Reset CSS</h3>
            <div class="reset">
                <ul>
                    <li>List Item</li>
                    <li>List Item</li>
                    <li>List Item</li>
                    <li>List Item</li>
                    <li>List Item</li>
                </ul>
                <h1>Big letters</h1>
                <h2>Less big of letters</h2>
                <h3>Getting smaller</h3>
                <h4>Hello world</h4>
                <h5>Kid Rock</h5>
                <h6>Ant man</h6>
            </div>
        </div>
    </div>

</asp:Content>
