using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp229_project1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine(Page.Title + " loaded...");
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