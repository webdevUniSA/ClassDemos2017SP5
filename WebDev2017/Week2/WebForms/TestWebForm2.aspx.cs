using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week2.WebForms
{
    public partial class TestWebForm2 : System.Web.UI.Page
    {
       public string firstName = "";
       public string lastName = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Page.Title = "My Test Page";
                Page.Header.Title = "My Test Page";
                Title = "My Test Page";

                firstName = Request.Form["firstName"];
                lastName = Request.Form["lastName"];
            }
            else
            {
                // first page load
            }

        }
    }
}