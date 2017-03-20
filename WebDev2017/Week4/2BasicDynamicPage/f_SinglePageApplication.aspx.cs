using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week4.BasicDynamicPage
{
    public partial class f_SinglePageApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divEdit.Visible = divInsert.Visible = divView.Visible = false;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            divEdit.Visible = divInsert.Visible = divView.Visible = divNothing.Visible = false;
            Button btn = sender as Button;
            if (btn.Text.ToLower().Contains("save"))
            {
                divView.Visible = true;
            }
            else if (btn.Equals(BCancelEdit))
            {
                divView.Visible = true;
            }
            else if (btn.Equals(BCancelInsert) || btn.Equals(BDelete))
            {
                divNothing.Visible = true;
            }
            else if (btn.Equals(BEdit))
            {
                divEdit.Visible = true;
            }
            else if (btn.Text.ToLower().Contains("new"))
            {
                divInsert.Visible = true;
            }
            else if (btn.Equals(BSelect))
            {
                divView.Visible = true;
            }
        }
    }
}