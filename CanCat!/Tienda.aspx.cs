using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class Tienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            bool addedToCart;

            if (!string.IsNullOrEmpty(Session["addedToCart"].ToString()) && bool.TryParse(Session["addedtocart"].ToString(), out addedToCart))
                if (addedToCart)
                    Session["addedToCart"] = false;
            Load_Products();
        }

        protected void Load_Products()
        {
            string template = "";

            DataTable products = Metodos.Fetch_Products(false);

            foreach(DataRow row in products.Rows)
            {
                template += "<div class='col-sm-12 col-md-3 col-lg-3'> " +
                                "<div class='card'> " +
                                    "<img height='280px' src='images/"+row["Imagen"]+"' class='card-img-top'/>" +
                                    "<div class='card-body'> " +
                                        "<h5 class='card-title'>"+ row["Product"] +" </h5>" +
                                        "<p class='card-text'>Precio: <strong>$"+ row["Precio"] +"</strong> Stock: <strong>"+row["Inventario"] +" </strong></p>"+
                                        "<a href='addtocart.aspx?itemId="+ row["Id"] +"' class='btn btn-primary'> Añadir al carrito</a>" +
                                    "</div>"+
                                "</div>" +
                            "</div>";
            }

            ProductsLiteral.Text = template;
        }
    }
}