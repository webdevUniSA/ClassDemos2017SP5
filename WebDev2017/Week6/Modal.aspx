<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modal.aspx.cs" Inherits="WebDev2016.Week6.Modal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>


              #overlay {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            z-index: 50;
            background-color: #000;
            opacity: 0.5;
        }


        #messageBox {
            position: absolute;
            top:100px;
            left:20%;
            border: 2px solid #000;
            border-radius: 10px;
            box-shadow: 20px 20px 20px #000;
            width: 400px;
            background-color: #fff;
            margin: 0 auto;
            padding:10px;
            text-align:center;
            box-sizing:border-box;
            z-index: 100;
        }

            #messageBox h3 {
                color: #c00;
                text-align: center;
            }

            #messageBox img {
                margin: 10px auto;
                border:1px solid #848484;
                border-radius:10px;
            }

                #messageBox img:hover {
                    cursor: pointer;
                    box-shadow:5px 5px 10px #000;
                }

              
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
     <div id="overlay" style="display: none"></div>
        <div id="messageBox" style="display: none">
            <h3>Some Message Title</h3>
            <p>Please press Kermit to close</p>
            <div class="imgOverlay">
            <img  src="/Images/KermitHappy.jpg" title="Close popup" />
                </div>
        </div>
    <button type="button">trigger popup!</button>
   <div style="height:500px"></div>
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script>

        $("button").on("click", function () {
            $("#overlay").show("fast", function () {
                $("#messageBox").fadeIn("fast");
            });
        });

        $("body").on("click", "#messageBox img", function () {
            $("#messageBox").fadeOut("slow", function () {
                $("#overlay").hide();
            });
        });
    </script>
</asp:Content>
