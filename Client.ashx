<%@ WebHandler Language="VB" Class="WebClientSA"%>
<%@ Assembly Name="SumatraDS.WebClient, Version=4.0.0.0, Culture=neutral, PublicKeyToken=fd0f7ef77d4bfd37"
%>
Imports System.Web
Imports System.Web.SessionState
Public Class WebClientSA
    Inherits SumatraDS.WebClient
    Implements IReadOnlySessionState

    Protected Overrides Sub OnSetup(ByVal props As SumatraDS.WebClientProperties, ByVal context As HttpContext)
        props.Server = "127.0.0.1"
        props.CssFile_4_0 = "TheGreenMeany.css"
        props.Database = "SumatraDemo"
        props.Module = context.Session("Module")
        props.User = context.Session("User")
        props.Password = context.Session("Password")
        props.EnableExportToExcel = True
    End Sub
End Class