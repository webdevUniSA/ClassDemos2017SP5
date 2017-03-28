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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPMain" runat="server">
    <div class="jumbotron">
        <h2 class="text-center">Images Inline with text are a headache!</h2>
    </div>

    <div class="row" id="demo">
        <div class="col-md-8 col-md-offset-2">
            <p class="border">
                <img src="/Images/Kermit_the_Frog.jpg" class="border" />
                Robert Stadler paced his office, wishing he would not feel the cold. Spring had been late in coming. Beyond the window, the dead gray of the hills looked like the smeared transition from the soiled white of the sky to the leaden black of the river. Once in a while, a distant patch of hillside flared into a silver-yellow that was almost green, then vanished. The clouds kept cracking for the width of a single sunray, then oozing closed again. It was not cold in the office, thought Dr. Stadler, it was that view that froze the place.
            </p>
            <p class="border">
                It was not cold today, the chill was in his bones—he thought—the stored accumulation of the winter months, when he had had to be distracted from his work by an awareness of such a matter as inadequate heating and people had talked about conserving fuel. It was preposterous, he thought, this growing intrusion of the accidents of nature into the affairs of men: it had never mattered before, if a winter happened to be unusually severe; if a flood washed out a section of railroad track, one did not spend two weeks eating canned vegetables; if an electric storm struck some power station, an establishment such as the State Science Institute was not left without electricity for five days. Five days of stillness this winter, he thought, with the great laboratory motors stopped and irretrievable hours wiped out, when his staff had been working on problems that involved the heart of the universe. He turned angrily away from the window—but stopped and turned back to it again. He did not want to see the book that lay on his desk.
            </p>
            <p class="border">
                He wished Dr Ferris would come. He glanced at his watch: Dr Ferris was late—an astonishing matter—late for an appointment with him—Dr. Floyd Ferris, the valet of science, who had always faced him in a manner that suggested an apology for having but one hat to take off.
            </p>
            <p class="border">
                This was outrageous weather for the month of May, he thought, looking down at the river; it was certainly the weather that made him feel as he did, not the book. He had placed the book in plain view on his desk, when he had noted that his reluctance to see it was more than mere revulsion, that it contained the element of an emotion never to be admitted. He told himself that he had risen from his desk, not because the book lay there, but merely because he had wanted to move, feeling cold. He paced the room, trapped between the desk and the window. He would throw that book in the ash can where it belonged, he thought, just as soon as he had spoken to Dr Ferris.
            </p>
            <p class="border">
                He watched the patch of green and sunlight on the distant hill, the promise of spring in a world that looked as if no grass or bud would ever function again. He smiled eagerly—and when the patch vanished, he felt a stab of humiliation, at his own eagerness, at the desperate way he had wanted to hold it. It reminded him of that interview with the eminent novelist, last winter. The novelist had come from Europe to write an article about him—and he, who had once despised interviews, had talked eagerly, lengthily, too lengthily, seeing a promise of intelligence in the novelist's face, feeling a causeless, desperate need to be understood. The article had come out as a collection of sentences that gave him exorbitant praise and garbled every thought he had expressed. Closing the magazine, he had felt what he was feeling now at the desertion of a sunray.
            </p>
            <p class="border">
                All right—he thought, turning away from the window—he would concede that attacks of loneliness had begun to strike him at times; but it was a loneliness to which he was entitled, it was hunger for the response of some living, thinking mind. He was so tired of all those people, he thought in contemptuous bitterness; he dealt with cosmic rays, while they were unable to deal with an electric storm.
            </p>
            <p class="border">
                He felt the sudden contraction of his mouth, like a slap denying him the right to pursue this course of thought. He was looking at the book on his desk. Its glossy jacket was glaring and new; it had been published two weeks ago. But I had nothing to do with it!—he screamed to himself; the scream seemed wasted on a merciless silence; nothing answered it, no echo of forgiveness. The title on the book's jacket was Why Do You Think You Think?
	There was no sound in that courtroom silence within him, no pity, no voice of defense — nothing but the paragraphs which his great memory had reprinted on his brain: Thought is a primitive superstition. Reason is an irrational idea. The childish notion that we are able to think has been mankind's costliest error.
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
