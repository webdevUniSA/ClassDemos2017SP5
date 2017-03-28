<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectorDemos.aspx.cs" Inherits="WebDev2017.Week5.CSS_Selectors.SelectorDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">

    <style>
        h2 {
                color:red;  
                color:#cc0000;
               
        }

        div.classSelector {
            border: 1px solid black;
        }

        /*#p2 {
            color:red;
        }*/

        p,  h2 {
            color:purple;
        }

        h2.text-center.someOtherClass {
            color:black;
        }


         div.classSelector > p {
            /* direct child */
            color:red;
        }

                 div.classSelector p {
            color:black;
        }


         div ~ p {
             color:darkgreen;
         }



       

       nav ul li a {

        }

       /*data-author="spencer"*/
     li a:not([data-author="spencer"]):not([data-author]){
          color:aqua;
      }

     #red:target {
    background-color:red;
     }


    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <h2 class="text-center someOtherClass">CSS Selector Examples</h2>
     <h2 class="text-center">CSS Selector Examples</h2>
    
    <div class="row">
        <div class="col-md-6 col-md-offset-3">

            <div class="classSelector">
                <p class="classSelector">Paragraph 1</p>
                <p id="p2">Paragraph 2</p>

                <p>Paragraph 3</p>

                <p>Paragraph 4</p>

                <p>Paragraph 5</p>

            </div>
            <div id="PText">
                <p><span>s</span>ome Text Goes Here </p>
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
            </div>
            <nav>
                <ul>
                    <li><a title="Hover text" class="someClass" id="someID" data-author="spencer">Page Link</a></li>
                    <li><a data-author="Mary">Page Link</a></li>
                    <li><a href="#">Page Link</a></li>
                    <li><a>Page Link</a></li>
                    <li><a>Page Link</a></li>
                    <li><a>Page Link</a></li>
                </ul>
            </nav>
            <div id="inheritanceDemo">
                <!-- use inheritance to from the div to style the p's -->
                <!-- do (1) text properties, (2) do border/padding etc -->
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
                <p>Some Text Goes Here </p>
            </div>
            <a href="#red">Red Link</a>
            <div id="red">Make this go red when the url # = red!</div>

        </div>
    </div>
</asp:Content>
