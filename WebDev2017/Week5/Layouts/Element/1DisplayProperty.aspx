<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="1DisplayProperty.aspx.cs" Inherits="ClassDemo.Layouts.ElementLayout._1DisplayProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #demo .border {
            border: 1px solid #c00;
            box-sizing: padding-box; /* include padding and border in total width calculations */
        }

        #demo span, #demo .border {
            margin-bottom: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Different elements display differently!</h2>
    </div>
    <div class="row" id="demo">
        <div class="col-md-10 col-md-offset-1">
            <div class="border">A div element is a Block-level element and takes up a whole line (row)</div>
            <span>A span is an Inline element and takes up only part of a line.</span> <span>It can be placed inline with other inline elements!</span><br />
            <span>Note that the margin-bottom property is not doing anything. . .</span>
            <br />
            <span class="border">An Inline element with border does not have built-in padding</span><span class="border" style="display: inline-block">An inline-block element does!</span>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <hr />
            <a class="btn btn-lg btn-primary" href="Default.aspx">Back</a>
        </div>
    </div>

</asp:Content>
