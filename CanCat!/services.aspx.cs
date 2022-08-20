using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void continuar_click(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                if (!logged_in)
                    Response.Redirect("login.aspx");

            }
            catch (Exception ex)
            {
                Response.Redirect("login.aspx");
            }
            Response.Redirect("consultas.aspx");
        }
    }
}