<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWebForm.aspx.cs" Inherits="WebDev2017.Week2.WebForms.TestWebForm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Test Page</title>
</head>
<body>
    <h1>Test Page</h1>

    <main>
        <form id="form1" runat="server">
            <hr />
            <input type="submit" value="Save" />
            <button type="submit">Save with Validation</button>
            <button type="submit" formnovalidate="">Save No Validation</button>
            <button type="reset">Clear</button>
            <hr />


            First Name:
            <input type="text" name="firstName" required="" runat="server" /><br />

            Last Name:
            <input type="text" name="lastName" placeholder="Last Name.." title="Last Name" runat="server" /><br />
           

            Gender:
            M
            <input type="radio" name="gender" value="M" />
            F<input type="radio" name="gender" value="F" />
            O<input type="radio" name="gender" checked="" value="O" />
            <br />


            Fav Color: Blue
            <input type="checkbox" name="color" checked="" value="blue" />
            Green
            <input type="checkbox" name="color" value="green" />
            <br />


            Fav Browser:
            <select name="browser" required="">
                <option value="">Select. . .</option>
                <option value="IE">IE</option>
                <option value="FireFox">FireFox</option>
                <option value="Chrome">Chrome</option>
                <option value="Safari">Safari</option>
            </select>

            <br />
            <!-- input slider for numbers-->
            <!-- set realistic limits, set default age -->
            Age:
            <input type="range" min="13" max="90" step="5" name="age" value="25" />
            <br />


            Subjects:
            <input type="text" name="subject" list="subjectList" />
            <datalist id="subjectList">
                <option value="DB Fundamentals"></option>
                <option value="Web Dev"></option>
            </datalist>

        </form>
    </main>
    <footer></footer>
    <script runat="server">
        // C#
        string firstName = "";
        string lastName = "";

        protected void Page_Load(object sender, EventArgs e )
        {
          firstName =   Request.Form["firstName"];
            lastName = Request.Form["lastName"];
        }
    </script>
</body>
</html>
