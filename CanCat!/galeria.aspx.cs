using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CanCat_
{
    public partial class galeria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    bool logged_in = Convert.ToBoolean(Session["logged_in"]);


            //    if (!logged_in)
            //        Response.Redirect("login.aspx");

            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("login.aspx");
            //}
            bool addedToCart;
            //if ( !string.IsNullOrEmpty(Session["addedToCart"].ToString()) && bool.TryParse( Session["addedToCart"].ToString(), out addedToCart))
            //if(addedToCart)
            Session["addedToCart"] = false;
            Load_Products();


        }

        protected void Load_Products()
        {
            string template = "";

            DataTable products = Metodos.Fetch_lista(false);

            foreach (DataRow row in products.Rows)
            {
                template += "<div class='col-sm-12 col-md-3 col-lg-3'> " +
                                "<div class='card'> " +
                                    "<img height= '280px' src='imagenes_galeria/" + row["imagen_recurso"] + "' class='card-img-top'/>" +
                                    "<div class='card-body'> " +
                                        "<h5 class='card-title'>" + row["nombre_imagen"] + " </h5>" +
                                    "</div>" +
                                "</div>" +
                            "</div>";
            }

            ProductsLiteral.Text = template;
        }
        protected void CAPTURAR()
        {
            Response.Redirect("mas_informacion.aspx");
        }
    }
}