using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class crearproductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);

                if (!isAdmin)
                    Response.Redirect("index");

            }
            catch (Exception ex)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");

            if (PhotoFile.HasFile)
            {
                strFileName = PhotoFile.PostedFile.FileName;
                strFileName = Path.GetFileName(strFileName);

                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                strFilePath = strFolder + strFileName;
                if (!File.Exists(strFilePath))
                {
                    PhotoFile.PostedFile.SaveAs(strFilePath);
                }
                string product = Product.Text.Trim();
                string marca = Marca.Text.Trim();
                double precio = Convert.ToDouble(Precio.Text.Trim());
                int inventario = Convert.ToInt32(Inventario.Text.Trim());
                int tipoproduct = Convert.ToInt32(TipoProduct.Text.Trim());
                string imagen = strFileName;


                int guardado = Metodos.Add_Product(product, marca, precio, inventario, tipoproduct, imagen);

                if (guardado == 1)
                {
                    alerta.Text = "<script>Swal.fire('Nuevo Producto','¡Producto registrado exitosamente!', 'success'); </script>";
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('OOPS','Hubo un error al guardar los datos', 'error'); </script>";
                }


              
            }
        }
    }
}