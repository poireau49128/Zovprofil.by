//using System;
//using System.Web;
//using System.Web.UI;
//using Microsoft.AspNet.Identity;
//using Microsoft.AspNet.Identity.Owin;
//using Owin;
//using Zovprofil.Models;

//namespace Zovprofil.Account
//{
//    public partial class Login : Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            RegisterHyperLink.NavigateUrl = "Register";
//            // Включите, когда будет включено подтверждение учетной записи для функции сброса пароля
//            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
//            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
//            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
//            if (!String.IsNullOrEmpty(returnUrl))
//            {
//                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
//            }
//        }

//        protected void LogIn(object sender, EventArgs e)
//        {
//            if (IsValid)
//            {
//                // Проверка пароля пользователя
//                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
//                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

//                // Сбои при входе не приводят к блокированию учетной записи
//                // Чтобы ошибки при вводе пароля инициировали блокирование, замените на shouldLockout: true
//                var result = signinManager.PasswordSignIn(UserName.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

//                switch (result)
//                {
//                    case SignInStatus.Success:
//                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
//                        break;
//                    case SignInStatus.LockedOut:
//                        Response.Redirect("/Account/Lockout");
//                        break;
//                    case SignInStatus.RequiresVerification:
//                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
//                                                        Request.QueryString["ReturnUrl"],
//                                                        RememberMe.Checked),
//                                          true);
//                        break;
//                    case SignInStatus.Failure:
//                    default:
//                        FailureText.Text = "Неудачная попытка входа";
//                        ErrorMessage.Visible = true;
//                        break;
//                }
//            }
//        }

//        protected void SignOut(object sender, EventArgs e)
//        {
//            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
//            authenticationManager.SignOut();
//            Response.Redirect("~/Login.aspx");
//        }
//    }
//}

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI.WebControls;

namespace Zovprofil
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    LogoutButton.Visible = true;
                }
                else
                {
                    LoginForm.Visible = true;
                }
            }
        }

        protected void SignIn(object sender, EventArgs e)
        {
            //var userStore = new UserStore<IdentityUser>();
            //var userManager = new UserManager<IdentityUser>(userStore);
            //var user = userManager.Find(UserName.Text, Password.Text);

            //if (user != null)
            //{
            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            //    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            //    Response.Redirect("~/Login.aspx");
            //}
            //else
            //{
            //    StatusText.Text = "Invalid username or password.";
            //    LoginStatus.Visible = true;
            //}
            if (IsValid)
            {
                // Проверка пароля пользователя
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // Сбои при входе не приводят к блокированию учетной записи
                // Чтобы ошибки при вводе пароля инициировали блокирование, замените на shouldLockout: true
                var result = signinManager.PasswordSignIn(UserName.Text, Password.Text, false,/*RememberMe.Checked,*/ shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        //Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                        //                                Request.QueryString["ReturnUrl"],
                        //                                RememberMe.Checked),
                        //                  true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        //FailureText.Text = "Неудачная попытка входа";
                        //ErrorMessage.Visible = true;
                        break;
                }
            }
        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}