using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace comp229_project1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine(Page.Title + " loaded...");

            if (!IsPostBack)
            {
                // check if a user is logged in
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    // hide Login and register, and show Logout menu button
                    register.Visible = false;
                    login.Visible = false;
                    logout.Visible = true;
                }
                else
                {
                    // show Login and register, and hide Logout menu button
                    register.Visible = true;
                    login.Visible = true;
                    logout.Visible = false;
                }
            }

            SetActivePage();
        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Game":
                    home.Attributes.Add("Class", "active");
                    break;
                case "Register":
                    register.Attributes.Add("Class", "active");
                    break;
                case "Login":
                    login.Attributes.Add("Class", "active");
                    break;
                default:
                    home.Attributes.Add("Class", "active");
                    break;
            }
        }
    }
}