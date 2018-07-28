using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nemesis.Website.SystemUser
{
    public partial class Solicitud : System.Web.UI.Page
    {
        public string siteKey { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            siteKey = ConfigurationManager.AppSettings["siteKey"].ToString();
            Page.DataBind();
        }
    }
}