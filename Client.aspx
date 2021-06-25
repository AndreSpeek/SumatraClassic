<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Client.aspx.cs" Inherits="Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sumatra Office Pack</title>
    <link href="TheGreenMeany.css" rel="stylesheet" />
    <script src="Scripts.js"></script>
</head>
<body onload="SpinSatellite();">
    <form id="form1" runat="server">
        <div class="moduleTop">
            <asp:LinkButton ID="btnBack" runat="server" OnClientClick="SwapSatellite();" OnClick="btnBack_Click">
                <div class="arrow-left"></div>
            </asp:LinkButton>
            <img id="imgSatellite" src="images/fdbk_rest.gif" />
            <header><asp:Label ID="lblModule" runat="server" /></header>
        </div>
        <iframe id="frmClient" src="Client.ashx" frameborder="0" border="0" onmousedown="SpinSatellite();" />
    </form>
</body>
</html>
