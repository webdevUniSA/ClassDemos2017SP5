using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDev2017.Week1
{
    public partial class _2_StatelessServerManaged : System.Web.UI.Page
    {
        int statelessCount = 0;
        int cookieCount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            statelessCount += 1;
            LCountStateless.InnerText = statelessCount.ToString();

            int theTruthCount = Convert.ToInt32(HFCount.Value) + 1;
            //int theTruthCount = Convert.ToInt32(Request.Form["HFCount"]) + 1; // using name attribute
            HFCount.Value = theTruthCount.ToString();
            LCountStatefull.InnerText = theTruthCount.ToString();

            // the following code relies on a hidden field called viewState which is turned off
            int viewStateCount = Convert.ToInt32(LCountViewState.InnerText) + 1;
            LCountViewState.InnerText = viewStateCount.ToString();

            // check if cookie present, if not make new one
            HttpCookie myCookie = null;
            if (Request.Cookies["counter"] == null)
            {
                myCookie = new HttpCookie("counter");
            }
            else { myCookie = Request.Cookies["counter"]; }
            // increment cookie counter
            cookieCount = Convert.ToInt32(myCookie["counter"]) + 1;
            myCookie["counter"] = Convert.ToString(cookieCount);
            // add cookie back to response
            Response.Cookies.Add(myCookie);
            // assign value to label on page
           LcookieCount.InnerText = Convert.ToString(cookieCount);
        }
    }
}