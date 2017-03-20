using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week4
{
    public partial class DataValues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SDSCustomers_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
          //  GVCustomers.DataBind();
        }
    }
}