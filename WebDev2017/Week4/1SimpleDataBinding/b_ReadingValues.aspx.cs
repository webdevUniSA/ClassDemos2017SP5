using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week4.SimpleDataBinding
{
    public partial class b_ReadingValues : System.Web.UI.Page
    {
        public string firstName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            firstName = Request.Form["firstNameCSharpVal"];
        }
    }
}