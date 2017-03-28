<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectorsCombinators.aspx.cs" Inherits="WebDev2016.Week5.SelectorsCombinators" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        /* Style p siblings that appear after a div */ 
        div ~ p {
            color: red;
        }

        /* Style immediate sibling after div */
        div + p {
            color: purple;
        }

        /* Style all but the first list item */
      li + li {
            font-weight: bold;
        }

        /* Style immediate child */
        p > span {
            font-weight: bold;
        }

        /* style all children/descendents */
        p span {
            font-weight: normal;
        }

        *#test {
            font-weight: bold;
        }

        /*  *div {}  wrong because * and div are both element selectors */
    </style>

</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Css Selectors and Combinators</h2>



    <div>
        <p><b>This is bold text</b></p>
        <p><span>Is this text also bold? If not, why not!</span></p>

        <p id="test">Is this bold</p>
    </div>
    <p>This is a sibling of the div</p>
    <p>This is a sibling of the div</p>
    <p>This is a sibling of the div</p>

    <ul>
        <li>Point 1</li>
        <li>Point 2</li>
        <li>Point 3</li>
    </ul>

</asp:Content>
