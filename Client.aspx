<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Client.aspx.cs" Inherits="Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sumatra Office Pack</title>
    <link href="TheGreenMeany.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="moduleTop">
            <asp:LinkButton ID="btnBack" runat="server" OnClick="btnBack_Click">
                <div class="arrow-left"></div>
            </asp:LinkButton>
            <img src="images/fdbk_rest.gif" />
            <header><asp:Label ID="lblModule" runat="server" /></header>
        </div>
        <iframe src="Client.ashx" frameborder="0" border="0" />
    </form>
</body>
</html>
