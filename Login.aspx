<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sumatra Office Pack</title>
    <link href="TheGreenMeany.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <table>
                <tr>
                    <th>
                        Gebruiker
                    </th>
                    <td>
                        <asp:TextBox ID="tbUserName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <th>
                        Wachtwoord
                    </th>
                    <td>
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" />
                    </td>
                </tr>
                <tr>
                    <th>

                    </th>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
