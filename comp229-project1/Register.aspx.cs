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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect back to Default page
            Response.Redirect("/Default.aspx");
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            // create a new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // create a new user object
            var user = new IdentityUser()
            {
                UserName = UserNameTextBox.Text,
                Email = EmailTextBox.Text
            };

            // create a new user in the database and store the results
            IdentityResult results = userManager.Create(user, PasswordTextBox.Text);

            // check if registion succeeds
            if (results.Succeeded)
            {
                // authenticate and login the new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                // redirect to the Default page
                Response.Redirect("/Default.aspx");
            }
            else
            {
                // display error in the AlertFalsh div
                StatusLabel.Text = results.Errors.FirstOrDefault();
                AlertFlash.Visible = true;
            }
        }
    }
}