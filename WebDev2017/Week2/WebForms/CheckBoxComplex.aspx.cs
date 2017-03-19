using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week2.WebForms
{
    public partial class CheckBoxComplex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            result.InnerText = Request.Form["country"];

            //if (IsPostBack)
            //{
            //    if (Request.Form["country"].Contains("Germany")) Germany.Checked = true;
            //}
        }

        //protected override void OnPreRenderComplete(EventArgs e)
        //{
        //    base.OnPreRenderComplete(e);
        //    Germany.ClientIDMode = ClientIDMode.Static;
        //    Germany.Name = "country";
        //    Germany.Attributes["name"] = "country";
        //}
    }
}