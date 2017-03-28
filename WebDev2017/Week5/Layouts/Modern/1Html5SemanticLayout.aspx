<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="1Html5SemanticLayout.aspx.cs" Inherits="ClassDemo.Layouts.ModernLayout._1Html5SemanticLayout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        /* div layout */
        #bodyHeader, #bodyFooter {
            text-align: center;
        }

        #demo > div {
            margin-bottom: 100px;
            border: 1px dashed #a2a2a2;
        }

        #demo div:not(.page) {
            border: 1px dashed #a2a2a2;
            height: 100px;
        }

        #demo div.center-block {
            width: 70%;
            margin: 0 auto;
        }

        /* HTML5 layout */
        #demo header, #demo footer {
            text-align: center;
        }

        #demo footer {
            margin-bottom: 100px;
            border: 1px dashed #a2a2a2;
        }

        #demo header, #demo nav, #demo main, #demo footer {
            border: 1px dashed #a2a2a2;
            height: 100px;
        }

        #demo nav, #demo main {
            width: 70%;
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Modern Semantic vs Div Layout</h2>
    </div>


    <div class="row">
        <div class="col-md-12" id="demo">

            <h3 class="text-center">HTML5 Semantic Layout</h3>
            <div class="page">
                <header>Page Header</header>
                <nav class="center-block text-center">Navigation</nav>
                <main class="center-block">Centered Page Content</main>
                <footer>Page Footer</footer>
            </div>



            <h3 class="text-center">Div Layout</h3>
            <div class="page">
                <div id="bodyHeader">Page Header</div>
                <div id="bodyNavigation" class="center-block text-center">Navigation</div>
                <div id="bodyContent" class="center-block">Centered Page Content</div>
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
