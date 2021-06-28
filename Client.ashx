<%@ WebHandler Language="C#" Class="SumatraViewer" %>
<%@ Assembly Name="SumatraDS.WebClient, Version=4.0.0.0, Culture=neutral, PublicKeyToken=fd0f7ef77d4bfd37" %>

using System;
using System.Web;
using System.Web.SessionState;

public class SumatraViewer : SumatraDS.WebClient, IReadOnlySessionState
{
    protected override void OnSetup(SumatraDS.WebClientProperties props, HttpContext context)
    {
        props.Server = "127.0.0.1";
        props.CssFile_4_0 = "TheGreenMeany.css";
        props.Database = (string)context.Session["Administration"];
        props.Module = (string)context.Session["Module"];
        props.User = (string)context.Session["User"];
        props.Password = (string)context.Session["Password"];
    }
}
