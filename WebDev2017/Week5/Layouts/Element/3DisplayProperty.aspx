<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="2DisplayProperty.aspx.cs" Inherits="ClassDemo.Layouts.ElementLayout._2DisplayProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
    <style>
        #demo .border {
            border: 1px solid #c00;
            box-sizing: padding-box; /* include padding and border in total width calculations */
        }

        #demo span, #demo .border {
            margin-bottom: 50px;
        }

        #demo * {
            box-sizing: border-box;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Images Inline with text are a headache!</h2>
    </div>

    <div class="row" id="demo">
        <div class="col-md-8 col-md-offset-2">
            <img class="border" style="display: inline-block" src="/Images/kermit-the-frog-mad.jpg" />
            <p class="border" style="display: inline-block; width: 400px;">Robert Stadler paced his office, wishing he would not feel the cold. Spring had been late in coming. Beyond the window, the dead gray of the hills looked like the smeared transition from the soiled white of the sky to the leaden black of the river. Once in a while, a distant patch of hillside flared into a silver-yellow that was almost green, then vanished. The clouds kept cracking for the width of a single sunray, then oozing closed again. It was not cold in the office, thought Dr. Stadler, it was that view that froze the place.</p>
            <p class="border" style="display: inline-block; width: 400px;">
                It was not cold today, the chill was in his bones—he thought—the stored accumulation of the winter months, when he had had to be distracted from his work by an awareness of such a matter as inadequate heating and people had talked about conserving fuel. It was preposterous, he thought, this growing intrusion of the accidents of nature into the affairs of men: it had never mattered before, if a winter happened to be unusually severe; if a flood washed out a section of railroad track, one did not spend two weeks eating canned vegetables; if an electric storm struck some power station, an establishment such as the State Science Institute was not left without electricity for five days. Five days of stillness this winter, he thought, with the great laboratory motors stopped and irretrievable hours wiped out, when his staff had been working on problems that involved the heart of the universe. He turned angrily away from the window—but stopped and turned back to it again. He did not want to see the book that lay on his desk.
            </p>
            <p class="border">
                He wished Dr Ferris would come. He glanced at his watch: Dr Ferris was late—an astonishing matter—late for an appointment with him—Dr. Floyd Ferris, the valet of science, who had always faced him in a manner that suggested an apology for having but one hat to take off.
            </p>
        </div>
    </div>
        <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <hr />
            <a class="btn btn-lg btn-primary" href="Default.aspx">Back</a>
        </div>
    </div>

</asp:Content>
