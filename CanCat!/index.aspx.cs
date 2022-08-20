using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool logged_in = Convert.ToBoolean(Session["logged_in"]);

            if (!Page.IsPostBack)
            {
                try
                {
                    if (logged_in == true)
                    {
                       
                       btnlogin.Style["Visibility"] = "hidden";


                    }
                    else
                    {
                        btnlogin.Style["Visibility"] = "visible";

                    }
                }
                catch (Exception ex)
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    
                }
            }

        }
        protected void BtnLogin(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}