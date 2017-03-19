<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxComplex.aspx.cs" Inherits="WebDev2017.Week2.WebForms.CheckBoxComplex" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Example Checbox</title>
    <script src="/Scripts/jquery-3.1.1.min.js"></script>
    <style>
        body {
            font-size: 20px;
        }

        form {
            float: left;
            margin-right: 100px;
        }

        fieldset {
            width: 200px;
        }

            fieldset > div {
                height: 30px;
                padding: 10px;
                text-align: center;
                border: 1px solid #808080;
                margin: 5px;
                font-size: 20px;
            }

        div.country {
        }

        div.condition {
            width: 65px;
            display: inline-block;
            background-color: #edf5f6;
            border-color: #93c3ce;
        }

            div.condition.selected, div.condition:hover {
                background-color: #c0dce2;
            }

        div input {
            display: none;
        }

        div.country.selected, div.country:hover {
            background-color: #cfeac8;
        }


        #exampleCode {
            /* change to "block" to see text */
            float: left;
            width: 550px;
            font-size: 1.2em;
        }

            #exampleCode div {
                width: 530px;
                height: 80px;
                text-align: left;
            }
    </style>
</head>

<body>
    <form runat="server">
        <div style="float: left; width: 50%; box-sizing: border-box">
            <fieldset>
                <legend>Country Selector</legend>
                <div class="country">
                    Germany
                <input type="checkbox" name="country" value="Germany" />
                </div>
                <div class="country">
                    Sweden
                <input type="checkbox" name="country" value="Sweden" />
                </div>
                <div class="country">
                    Mexico
                <input type="checkbox" name="country" value="Mexico" />
                </div>
                <div class="condition">AND<input type="checkbox" name="condition" value="and" /></div>
                <div class="condition selected">OR<input type="checkbox" name="condition" value="or" /></div>
                <hr />
                <button type="submit">Submit</button>

            </fieldset>
            <p>
                <span style="font-size: 2em" runat="server" id="result"></span>
            </p>
        </div>
        <div style="float: right; width: 50%; box-sizing: border-box">

            <fieldset id="exampleCode">
                <legend>fieldset</legend>
                <div>
                    &lt;div id=&quot;country&quot;&gt;Germany
                <br />
                    &lt;input name="country" type="checkbox" value="Germany" /&gt;<br />
                    &lt;/div&gt;
                </div>
                <div>
                    &lt;div id=&quot;country&quot;&gt;Sweden
                 <br />
                    &lt;input name="country" type="checkbox" value="Sweden" /&gt;<br />
                    &lt;/div&gt;
                </div>
                <div>
                    &lt;div id=&quot;country&quot;&gt;Mexico
                 <br />
                    &lt;input name="country" type="checkbox" value="Mexico" /&gt;<br />
                    &lt;/div&gt;
                </div>
                &lt;span id=&quot;result&quot;&gt;. . .<br />
                &lt;/span&gt;

            </fieldset>
            <div style="clear: both"></div>
        </div>
    </form>
    <script>

        $("div.country").click(function () {
            var cb = $(this).children("input[type=checkbox]");
            var checked = $(cb).is(":checked");
            $(cb).prop("checked", !checked);

            if ($(cb).is(":checked")) {
                $(this).addClass("selected");
            }
            else {
                $(this).removeClass("selected");
            }
        });

        $("div.condition").click(function () {
            var cb = $(this).children("input[type=checkbox]");
            var checked = $(cb).is(":checked");
            if (!checked) {
                $("div.condition.selected").removeClass("selected").children("input[type=checkbox]").prop("checked", false);
                $(cb).prop("checked", true);
                $(this).addClass("selected");
            }
        });

        // this function is required if the selections need to be persistent
        //var result = $("#result").text();
        //$("input[type=checkbox]").each(function (index, elem) {
        //    if (result.indexOf($(elem).attr("value")) >= 0) {
        //        $(elem).prop("checked", true);
        //        $(elem).closest("div").addClass("selected");
        //    }
        //});


    </script>
</body>
</html>
