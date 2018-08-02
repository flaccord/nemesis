using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nemesis.Website.SystemUser
{
    public partial class ConsultaGestionaDocumentos : System.Web.UI.Page
    {
        public string clienteName = "";
        public string rfc = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["cliente"] != null) {
                clienteName = Request.QueryString["cliente"].ToString();
            }

            if (Request.QueryString["rfc"] != null)
            {
                rfc = Request.QueryString["rfc"].ToString();
            }
            
        }
    }
}