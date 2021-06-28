<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modules.aspx.cs" Inherits="Modules" %>
<%@ Assembly Name="SumatraDS.WebClient, Version=4.0.0.0, Culture=neutral, PublicKeyToken=fd0f7ef77d4bfd37" %>
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
        </div>
        <table class="moduleHolder">
            <tr>
                <td>
                    <asp:Repeater ID="rptAdministrations" runat="server" OnItemDataBound="rptAdministrations_ItemDataBound">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnAdministration" runat="server" CssClass="btnAdministration" OnClientClick="SpinSatellite();" OnClick="btnAdministration_Click" />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
                <td class="modulesRight">
                    <asp:Repeater ID="rptModules" runat="server" OnItemDataBound="rptModules_ItemDataBound">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnModule" runat="server" CssClass="btnModule" OnClientClick="SpinSatellite();" OnClick="btnModule_Click" />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
