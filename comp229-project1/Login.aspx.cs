using System;
using System.Collections.Generic;
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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // search for and create a new user object
            var user = userManager.Find(UserNameTextBox.Text, PasswordTextBox.Text);

            // if a match is found for the user
            if(user != null)
            {
                // authenticate and login the user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                /* The simple redirect throws exception System.Threading.ThreadAbortException in mscorlib.dll ("Thread was being aborted.")
                 * Suggestion @ https://blogs.msdn.microsoft.com/tmarq/2009/06/25/correct-use-of-system-web-httpresponse-redirect/
                 * Response.Redirect(url, false);
                 * Context.ApplicationInstance.CompleteRequest();
                 * However, I won't try it here. Maybe later.
                */
                // redirect the user
                Response.Redirect("/Default.aspx");
            }
            // user is not found
            else
            {
                StatusLabel.Text = "Invalid Username or Password";
                AlertFlash.Visible = true;
            }
        }
    }
}