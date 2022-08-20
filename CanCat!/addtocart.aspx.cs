using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["itemId"];
            int productId;
            if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out productId))
            {
                
                string CartId = Metodos.GetCartId();
                int userId = (int) HttpContext.Current.Session["userID"];

                int agregado = Metodos.AddToCart(productId, CartId, userId);

                if(agregado == 1)
                {
                    Session["addedToCart"] = true;
                    alerta.Text = "<script>Swal.fire('Agregado al carrito','¡Su producto ha sido agregado exitosamente!', 'success'); </script>";
                    Response.Redirect("carrito.aspx");
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Error al agregar al carrito','No fue posible agregar el producto al carrito', 'error'); </script>";
                }
            }
            else
            {
                Debug.Fail("ERROR : Nunca deberias de acceder a AddToCart.aspx sin un ProductId.");
                throw new Exception("ERROR : Es ilegal cargar AddToCart.aspx sin ajustar un ProductId.");
            }
            Response.Redirect("carrito.aspx");
        }
    }
}