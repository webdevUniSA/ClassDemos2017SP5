<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="1Table.aspx.cs" Inherits="ClassDemo.Layouts.ElementLayout._1Table" %>

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

        /* Note that these rules were not around when when table layouts were! */
        /*
        tr td:nth-child(odd) { 
            width:15%;
        }
       */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
        <div class="jumbotron">
        <h2 class="text-center">Legacy Table Layout</h2>
    </div>
    <div class="row">
        <div class="col-md-12" id="demo">
            <h3 class="text-center">HTML Table Layout</h3>
            <table style="width: 100%;">
                <tr id="header" align="center">
                    <td colspan="3">Page Header</td>
                </tr>
                <tr id="navigation" align="center">
                    <td class="sideWidth"></td>
                    <td>Navigation</td>
                    <td class="sideWidth"></td>
                </tr>
                <tr id="content" align="left">
                    <td class="sideWidth"></td>
                    <td>Centered Page Content</td>
                    <td class="sideWidth"></td>
                </tr>
                <tr id="footer" align="center">
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
