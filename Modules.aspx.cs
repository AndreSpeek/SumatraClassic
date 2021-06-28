using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modules : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        InitSumatra();
    }

    #region Control events
    protected void rptAdministrations_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RepeaterItem ri = e.Item;
        string adm = (string)ri.DataItem;

        LinkButton btnAdministration = (LinkButton)ri.FindControl("btnAdministration");

        btnAdministration.Text = adm;

        if (adm == Context.Session["Administration"].ToString())
            btnAdministration.CssClass = "btnAdministrationSelected";
    }
    protected void rptModules_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RepeaterItem ri = e.Item;
        SumatraModule mod = (SumatraModule)ri.DataItem;

        LinkButton btnModule = (LinkButton)ri.FindControl("btnModule");

        btnModule.Text = mod.Module;
    }
    protected void btnAdministration_Click(object sender, EventArgs e)
    {
        string selectedAdministration = ((LinkButton)sender).Text;
        Context.Session["Administration"] = selectedAdministration;
        InitSumatra();
    }
    protected void btnModule_Click(object sender, EventArgs e)
    {
        Context.Session["Module"] = ((LinkButton)sender).Text;
        Response.Redirect("Client.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Context.Session["User"] = null;
        Context.Session["Password"] = null;
        Context.Session["Administration"] = null;
        Context.Session["Module"] = null;

        Response.Redirect("Login.aspx");
    }

    #endregion

    #region Privates
    private class SumatraModule {
        public string Administration { get; set; }
        public string Module { get; set; }
    }

    private List<SumatraModule> SumatraModules = new List<SumatraModule>();
    private List<string> Administrations = new List<string>();

    #endregion

    #region Helper Functions
    protected void InitSumatra()
    {
        if (Context.Session["User"] != null)
        {
            SumatraDS.WebClientProperties props = new SumatraDS.WebClientProperties
            {
                CssFile_4_0 = "TheGreenMeany.css",
                User = Context.Session["User"].ToString(),
                Password = Context.Session["Password"].ToString()
            };

            SumatraModules.Clear();

            foreach (var test in SumatraDS.WebClient.GetAccessRights(props))
            {
                SumatraModule sumatraModule = new SumatraModule();
                sumatraModule.Administration = test.Database;
                sumatraModule.Module = test.Module;

                SumatraModules.Add(sumatraModule);
            }

            Administrations = SumatraModules.Select(p => p.Administration).Distinct().ToList();

            if (Context.Session["Administration"] == null || Context.Session["Administration"].ToString() == "")
                Context.Session["Administration"] = Administrations[0];

            rptAdministrations.DataSource = Administrations;
            rptAdministrations.DataBind();

            BindModules(Context.Session["Administration"].ToString());
        }
        else 
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void BindModules(string Administration)
    {
        List<SumatraModule> AvailableModules = SumatraModules.Where(p => (p.Administration == Administration)).ToList();

        rptModules.DataSource = AvailableModules;
        rptModules.DataBind();
    }

    #endregion
}