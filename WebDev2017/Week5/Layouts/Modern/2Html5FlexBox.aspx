<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="2Html5FlexBox.aspx.cs" Inherits="ClassDemo.Layouts.ModernLayout._2Html5FlexBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
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


        #page {
            display: flex;
            -ms-flex-pack: center;
            flex-wrap: wrap;
        }

        header, footer, nav {
            -ms-flex: none;
            -webkit-flex: none;
            flex: none;
            flex-basis: 100%;
            box-sizing: border-box;
        }


        main {
            /*flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]*/
            flex-grow: 3; /* grow slower/faster than others   - initial value: 0 */
            flex-shrink: 3; /* shrink slower/faster than others - initial value: 1 */
            flex-basis: 0; /* how much space originally taken by content before implementing grow/shrink initial value: auto */
            /* alternative */
            /*-ms-flex: 3;
            -webkit-flex: 3;
            flex: 3;*/
        }

        nav.left, nav.right {
            /*flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]*/
            flex-grow: 1; /* grow slower/faster than others   - initial value: 0 */
            flex-shrink: 1; /* shrink slower/faster than others - initial value: 1 */
            flex-basis: 0; /* how much space originally taken by content before implementing grow/shrink initial value: auto */
            /* alternative */
            /*-ms-flex: 1;
            -webkit-flex: 1;
            flex: 1;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Floating Divs</h2>
        <p>
            Note that <strong>float</strong>, <strong>clear</strong> and <strong>vertical-align</strong> have no effect on a flex item.<br />
            This example works as anticipated in FireFox.
        </p>
    </div>
    <div class="row">
        <div class="col-md-12" id="demo">
            <h3 class="text-center">Flexbox Layout</h3>
            <div id="page">
                <header>Page Header</header>
                <nav class="center-block text-center">Navigation</nav>
                <nav class="left">Left Nav</nav>
                <main>Centered Page Content</main>
                <nav class="right">Right Nav</nav>
                <footer>Page Footer</footer>
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
