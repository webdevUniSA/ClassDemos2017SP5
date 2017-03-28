<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoundCorners.aspx.cs" Inherits="WebDev2016.Week5.RoundCorners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script>

        $(document).on("click", "a.tab", function () {
            $(".tab").removeClass("selected");
            $(this).addClass("selected");
            return false;
        });
    </script>
    <style>
        a.tab {
            padding: 5px 20px;
            margin-right: 2px;
            display: inline-block;
            border: 1px solid grey;
            border-bottom: none;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            text-decoration: none;
            color: #000;
        }

            a.tab:hover {
                /* background color and opacity */
                background: rgba(0,0,0,0.1);
                /* the following version affects the text and background opacity */
                /*
            background:darkgrey;
            opacity:0.7;
                */
                background: linear-gradient(180deg, lightgrey, darkgrey 80%);
            }


            a.tab.selected {
                background: lightgrey;
            }

        #tabbedContent {
            border: 1px solid grey;
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
            height: 100px;
            padding: 10px;
            box-shadow: 6px 6px 10px #000;
        }

        div.formButtons button {
            float: right;
            padding: 5px 10px;
            border-radius: 5px;
            background: rgba(0,0,0,0.1);
            border:1px solid #808080;
            margin-left:5px;
        }

            .button:hover {
                cursor: pointer;
            }

            .button.save:hover {
                background: #a9d1ab;
            }

            .button.cancel:hover {
                background: #e8b9bf;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="CPMain" runat="server">
    <h2>Round Corners Example</h2>
    <a href="#" id="tab1" class="tab selected">Tab 1</a>
    <a href="#" id="tab2" class="tab">Tab 2</a>
    <a href="#" id="tab3" class="tab">Tab 3</a>
    <a href="#" id="tab4" class="tab">Tab 4</a>
    <a href="#" id="tab5" class="tab">Tab 5</a>
    <div id="tabbedContent">
        My content Area

        <div class="formButtons">
            <button type="button" class="button cancel">Cancel</button>
            <button type="button" class="button save">Save</button>
        </div>
    </div>
    <div style="clear: both"></div>
</asp:Content>
