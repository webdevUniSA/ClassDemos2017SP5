<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="3FloatedDivs.aspx.cs" Inherits="ClassDemo.Layouts.ElementLayout._3FloatedDivs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        /* Overrise built-in bootstrap fixes*/
        #demo *,
        #demo *:before,
        #demo *:after {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }


        /* Start Div Styleing */
        #bodyHeader, #bodyFooter {
            text-align: center;
        }

        #demo > div {
            margin-bottom: 100px;
            border: 1px dashed #a2a2a2;
            /*box-sizing: border-box;*/
        }

        #demo div:not(#page) {
            border: 1px dashed #a2a2a2;
            height: 100px;
            /*box-sizing: border-box;*/
        }

        #demo div.center-block {
            width: 70%;
        }

        #leftNavigation, #rightNavigation, #bodyContent {
            float: left;
            /*box-sizing: border-box;*/
        }

        #leftNavigation, #rightNavigation {
            width: 15%;
            /*width: 14.73%;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Floating Divs</h2>
    </div>
    <div class="row">
        <div class="col-md-12" id="demo">
            <h3 class="text-center">Div Layout</h3>
            <div id="page">
                <div id="bodyHeader">Page Header</div>
                <div id="bodyNavigation" class="center-block text-center">Navigation</div>
                <div id="leftNavigation">Left Nav</div>
                <div id="bodyContent" class="center-block">Centered Page Content</div>
                <div id="rightNavigation">Right Nav</div>
                <div id="bodyFooter">Page Footer</div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <hr />
            <a class="btn btn-lg btn-primary" href="Default.aspx">Back</a>
        </div>
    </div>
</asp:Content>
