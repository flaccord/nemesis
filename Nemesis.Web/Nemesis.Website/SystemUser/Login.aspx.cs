using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nemesis.Website.SystemUser
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (checkLoginValidation()) {

            }
        }

        public bool checkLoginValidation() {
            bool valid = true;
            emailValidation.InnerText = "";
            passwordValidation.InnerText = "";
            if (email.Value == "")
            {
                emailValidation.InnerText = "Usuario es requerido.";
                email.Attributes.Add("class", "form-control input-validation-error");
                valid = false;
            }
            if (password.Value == "")
            {
                passwordValidation.InnerText = "Contraseña es requerida.";
                password.Attributes.Add("class", "form-control input-validation-error");
                valid = false;
            }
            return valid;
        }
    }
}