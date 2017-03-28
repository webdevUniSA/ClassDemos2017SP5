<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="2TableVsDiv.aspx.cs" Inherits="ClassDemo.Layouts.ElementLayout._2TableVsDiv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #demo table, #demo table td {
            border: 1px dashed #a2a2a2;
            border-collapse: separate;
        }

        tr {
            height: 100px;
        }

        td.sideWidth {
            width: 15%;
        }

        #bodyHeader, #bodyFooter {
            text-align: center;
        }

        #demo > div {
            margin-bottom: 100px;
            border: 1px dashed #a2a2a2;
        }

        #demo div:not(#page) {
            border: 1px dashed #a2a2a2;
            height: 100px;
        }

        #demo div.center-block {
            width: 70%;
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Legacy Table Vs Div Layout</h2>
    </div>
    <div class="row">
        <div class="col-md-12" id="demo">
            <h3 class="text-center">Div Layout</h3>
            <div id="page">
                <div id="bodyHeader">Page Header</div>
                <div id="bodyNavigation" class="center-block text-center">Navigation</div>
                <div id="bodyContent" class="center-block">Centered Page Content</div>
                <div id="bodyFooter">Page Footer</div>
            </div>

            <h3 class="text-center">Table Layout</h3>
            <table style="width: 100%;">
                <tr id="header" align="center" valign="top">
                    <td colspan="3">Page Header</td>
                </tr>
                <tr id="navigation" align="center" valign="top">
                    <td class="sideWidth"></td>
                    <td>Navigation</td>
                    <td class="sideWidth"></td>
                </tr>
                <tr id="content" align="left" valign="top">
                    <td class="sideWidth"></td>
                    <td>Centered Page Content</td>
                    <td class="sideWidth"></td>
                </tr>
                <tr id="footer" align="center" valign="top">
                    <td colspan="3">Page Footer</td>
                </tr>
            </table>


        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <hr />
            <a class="btn btn-lg btn-primary" href="Default.aspx">Back</a>
        </div>
    </div>
</asp:Content>
