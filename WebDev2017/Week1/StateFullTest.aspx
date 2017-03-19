<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateFullTest.aspx.cs" Inherits="WebDev2017.Week1.StateFullTest" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <input type="text" id="counter" name="counter" value='<%: count %>' />
        <button type="submit" id="myButton">Count Up</button>
    </form>

    <script runat="server">
        // this is now c# code becuase of the runat="server"
        // it would be javascript code if there was no runat="server"
        int count = 0;
        public void Page_Load(object sender, EventArgs e)
        {
            count =Convert.ToInt32( Request.Form["counter"]);
            count++;
        }


    </script>
</body>
</html>
