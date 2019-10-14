using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Prog2
{
    
    
    public class Global : System.Web.HttpApplication
    {
        void Session_Start(object sender, EventArgs e)
        {
            Session["Prog2_ProductID"] = "";
            Session["Prog2_ProductPrice"] = "";
            Session["Prog2_ProductQuantity"] = "";
            Session["Prog2_Computed"] = false;
        }
            protected void Application_Start(object sender, EventArgs e)
        {

        }
      

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        
         
            
    }
}