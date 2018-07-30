using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nemesis.Website.SystemUser
{
    public partial class Capturas : System.Web.UI.Page
    {
        public string referenceId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Ref"] != null) {
                referenceId = Request.QueryString["Ref"].ToString();
            }
        }
    }
}