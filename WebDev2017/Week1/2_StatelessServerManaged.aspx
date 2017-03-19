<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_StatelessServerManaged.aspx.cs" Inherits="WebDev2017.Week1._2_StatelessServerManaged" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <style>
        h2 {
            margin-top:50px;
        }

        .count {
            color:red;
            border:1px solid #000;
            padding:2px 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HTTP Stateless Tests</h1>
            <button type="submit">Trigger Count</button>
            <input type="submit" value="Trigger Count" />
            <h2>Stateless Test</h2>
            <p>A span element is read-only and must be re-created each time the page is requested</p>
            Span element Current Count: <span id="LCountStateless" class="count" runat="server" enableviewstate="false">0</span>

            <h2>Statefull Test - Hidden Field</h2>
            <p>
                An input element is read and write but can also send information back to the server.<br />
                This information can be read and used to re-create the page.
            </p>
            Hidden input field Current Count: <span id="LCountStatefull" class="count" runat="server">0</span>
            <input type="hidden" name="HFCount" id="HFCount" runat="server" value="0" />

            <h2>Statefull Test ASP.NET - ViewState (self managed by ASP.NET)</h2>
            <p>
                An input element is read and write but can also send information back to the server.<br />
                This information can be read and used to re-create the page.
            </p>
            ASP.NET Label/ViewState Current Count: <span id="LCountViewState" class="count" runat="server">0</span>
            <h2>Statefull Test - Cookie</h2>
            <p>
                An input element is read and write but can also send information back to the server.<br />
                This information can be stored in a cookie between post backs.
            </p>
            Cookie Current Count: <span id="LcookieCount" class="count" runat="server">0</span>
        </div>
    </form>
</body>
</html>
