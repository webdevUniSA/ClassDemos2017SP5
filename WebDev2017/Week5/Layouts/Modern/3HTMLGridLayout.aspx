<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="3HTMLGridLayout.aspx.cs" Inherits="WebDev2016.Week5.Layouts.Modern._3HTMLGridLayout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
        <style>
        body {
            font-size: 2em;
        }
        /*
                    You can size columns and rows (collectively referred to as tracks) using any of the following:
        •standard length units or a percentage of the object's width (for columns) or height (for rows)
        •the auto keyword, indicating the width of the column or height of the row is sized based on the items inside of it
        •the min-content keyword, indicating the minimum width or height of any child elements is used as the width or height
        •the max-content keyword, indicating the maximum width or height of any child elements used as the width or height
        •the minmax(a, b) keyword, indicating the width or height is between a and b, as available space allows
        •fraction units (fr), indicating the available space should be divided among the columns or rows according to their fraction values, as illustrated in the following example
        For an example of fraction units, consider the following expanded version of the "myGrid" ID selector:
                */
        #gridlayout {
            display: -ms-grid;
            background: lightgray;
            border: blue;

            /* specify individual column sizes as absolute or fractional values */
            -ms-grid-columns: 100px 100px 1fr 2fr;
            /*-ms-grid-columns: 2fr 2fr 2fr 2fr;*/
            /*-ms-grid-columns: 2fr;*/
            /* 2fr = largest so 1fr= 1/2 the size*/

            /* specify the row heights as exact or relative values */
            -ms-grid-rows: 50px 5em auto;
            /* -ms-grid-rows: 100px (30px, 60px); header row 100px high, data rows alternating 30px and 60px */
        }

        #div1 /*div:nth-child(1) */ {
            -ms-grid-row: 1;
            -ms-grid-column: 1;
            background: lightgreen;
        }

        #div2 /* div:nth-child(2) */ {
            -ms-grid-row: 1;
            -ms-grid-column: 2;
            background: lightblue;
        }

        #div3 /* div:nth-child(3)  */ {
            -ms-grid-row: 1;
            -ms-grid-column: 4;
            background: pink;
        }

        #div4 /* div:nth-child(4)  */ {
            -ms-grid-row: 2;
            -ms-grid-column: 3;
            background: magenta;
        }

        /*

                    This Grid has four columns, and each column appears as described here:
        •Column 1 (auto keyword): Column is fitted to the content in the column.
        •Column 2 ("100px"): Column is 100 pixels wide.
        •Column 3 ("1fr"): Column takes up one fraction unit of the remaining space.
        •Column 4 ("2fr"): Column takes up two fraction units of the remaining space.

        Because there are three total fraction units in this grid, Column 3 is allotted 1 fraction unit divided by 3 fraction units—or 1/3—of the remaining space. Column 4 is allotted 2/3 of the remaining space.

        Similarly, this Grid has three rows, and each row appears as described here:
        •Row 1 ("50px"): Row is 50 pixels tall.
        •Row 2 ("5em"): Row is 5 ems tall.
        •Row 3 (auto keyword): Row is fitted to the content in the row.

                */
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
 <h2>Grid Layout Demo</h2>
    <div id="gridlayout">
        <div id="div1">1</div>
        <div id="div2">2</div>
        <div id="div3">3</div>
        <div id="div4">4</div>
    </div>
    <p>For futher examples see <a href="http://www.w3schools.com/cssref/css3_pr_grid-rows.asp" target="_blank">w3 Schools</a></p>
</asp:Content>
