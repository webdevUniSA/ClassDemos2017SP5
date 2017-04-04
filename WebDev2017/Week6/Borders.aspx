<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borders.aspx.cs" Inherits="WebDev2016.Week6.Borders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #box, #box3{
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            height: 100px;
            width: 50%;
            border: 1px solid #000;
            /*display: inline-block;*/
            float: left;
            padding: 10px;
            margin: 0;
        }

        #box2, #box4 {
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            height: 100px;
            width: 50%;
            border: 1px solid #000;
            /*display: inline-block;*/
            float: left;
            padding: 10px;
            margin: 0;
        }

        #box3, #box4 {
            display:inline-block;
            float:none;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Box Sizing Demo</h2>
    <p>
        Note that in class this did not work because the boxes used display:inline-block;<br />
        This technically should not make a difference but this example now uses float:left and the 
        box-sizing property works as expected!<br />
        As it turns out, when using <strong>display:inline-block</strong>; the <strong>box-sizing:border-box</strong>; property does not take into account the border width hence the overflow onto the next line!!

    </p>
    <h3>Example using float:left</h3>
    <div id="box">Some Content</div>
    <div id="box2">Some other Content</div>

    <div style="clear:left;"></div>
    <h3 style="margin-top:50px">Example using display:inline-block</h3>
    <div id="box3">Some Content</div>
    <div id="box4">Some other Content</div>

</asp:Content>
