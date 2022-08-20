using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CanCat_
{
    public partial class admingaleria : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    cargar_imagenes();
        //}

        //protected void seleccionar_click(object sender, EventArgs e)
        //{
        //    if (PhotoFile.HasFile && Product.Text != "")
        //    {

        //        PhotoFile.SaveAs(Server.MapPath("imagenes_galeria//" + PhotoFile.FileName));
        //        string nombre_imagen1 = Product.Text;
        //        string recurso = PhotoFile.FileName;

        //        Metodos.insertar_imagen(nombre_imagen1, recurso);

        //        mensaje_alerta1.Text = "imagen ingresada exitosamente";
        //    }
        //    else
        //    {
        //        mensaje_alerta.Text = "porfavor rellena los campos requeridos";
        //    }
        //}
        //protected void cargar_imagenes()
        //{
        //    DataTable tabla_imagenes = Metodos.llenar_lista(true);
        //    ProductsList.DataSource = tabla_imagenes;
        //    ProductsList.DataBind();
        //}
        protected void enviar_crear(object sender, EventArgs e)
        {
            //try
            //{
            //    bool logged_in = Convert.ToBoolean(Session["logged_in"]);
            //    bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);

            //    if (!isAdmin)
            //        Response.Redirect("index.aspx");

            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("login.aspx");
            //}
            Response.Redirect("admin_galeria_crear.aspx");
        }
        protected void enviar_eliminar(object sender, EventArgs e)
        {
            //try
            //{
            //    bool logged_in = Convert.ToBoolean(Session["logged_in"]);
            //    bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);

            //    if (!isAdmin)
            //        Response.Redirect("index.aspx");

            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("login.aspx");
            //}
            Response.Redirect("admin_galeria_borrar.aspx");
        }
    }
}