<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modules.aspx.cs" Inherits="Modules" %>

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
        </div>
        <table class="moduleHolder">
            <tr>
                <td>
                    Sumatra Demo
                </td>
                <td class="modulesRight">
                    <asp:LinkButton ID="btnCashflow" runat="server" CssClass="btnModule" Text="Cashflow" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnRevenue" runat="server" CssClass="btnModule" Text="Omzet" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnMyBudget" runat="server" CssClass="btnModule" Text="Mijn Budget" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnLogistics" runat="server" CssClass="btnModule" Text="Logistieke Analyse" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnSalesDashboard" runat="server" CssClass="btnModule" Text="Sales Dashboard 2021" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnCovid" runat="server" CssClass="btnModule" Text="COVID per gemeente" OnClick="btnModule_Click" />
                    <asp:LinkButton ID="btnTimer" runat="server" CssClass="btnModule" Text="Timer" OnClick="btnModule_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
