//using System;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using Microsoft.AspNet.Identity;
//using Microsoft.AspNet.Identity.Owin;
//using Owin;
//using Zovprofil.Models;

//namespace Zovprofil.Account
//{
//    public partial class Register : Page
//    {
//        protected void CreateUser_Click(object sender, EventArgs e)
//        {
//            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
//            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
//            var user = new ApplicationUser() { UserName = Login.Text, Email = Email.Text, ClientName = ClientName.Text };
//            IdentityResult result = manager.Create(user, Password.Text);
//            if (result.Succeeded)
//            {
//                // Дополнительные сведения о включении подтверждения учетной записи и сброса пароля см. на странице https://go.microsoft.com/fwlink/?LinkID=320771.
//                //string code = manager.GenerateEmailConfirmationToken(user.Id);
//                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
//                //manager.SendEmail(user.Id, "Подтверждение учетной записи", "Подтвердите вашу учетную запись, щелкнув <a href=\"" + callbackUrl + "\">здесь</a>.");

//                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
//                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
//            }
//            else
//            {
//                ErrorMessage.Text = result.Errors.FirstOrDefault();
//            }
//        }
//    }
//}

using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Zovprofil.Models;

namespace Zovprofil
{
    public partial class Register : System.Web.UI.Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = UserName.Text, Email = Email.Text, ClientName = ClientName.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                //ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}