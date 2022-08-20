using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CanCat_
{
    public partial class adminproductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);

                if (!isAdmin)
                    Response.Redirect("index.aspx");

            }
            catch (Exception ex)
            {
                Response.Redirect("login.aspx");
            }
            Load_Products();
        }

        protected void Load_Products()
        {
            DataTable myTable = Metodos.Fetch_Products(true);
            ProductsList.DataSource = myTable;
            ProductsList.DataBind();
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ProductId.Text);
            Fetch_product(id);
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");
            try
            {
                int id = Convert.ToInt32(ProductId.Text);
                string product = Product.Text.Trim();
                string marca = Marca.Text.Trim();
                double precio = Convert.ToDouble(Precio.Text.Trim());
                int inventario = Convert.ToInt32(Inventario.Text.Trim());
                int tipoproduct = Convert.ToInt32(TipoProducto.Text.Trim());

                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }

                if (PhotoFile.HasFile)
                {
                    // Obtener el nombre del archivo subido.
                    strFileName = PhotoFile.PostedFile.FileName;
                    strFileName = Path.GetFileName(strFileName);
                    string imagen = strFileName;
                    // Guardando el archivo en el servidor
                    strFilePath = strFolder + strFileName;
                    if (!File.Exists(strFilePath)) //Si el archivo subido no existe, lo crea en el servidor
                    {
                        PhotoFile.PostedFile.SaveAs(strFilePath);
                    }

                    int guardado = Metodos.Update_Product(id, product, marca, precio, inventario, tipoproduct, imagen);
                    if (guardado == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Products();
                        Fetch_product(id);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al actualizar el registro');", true);
                }
                else
                {
                    int guardado = Metodos.Update_Product(id, product, marca, precio, inventario, tipoproduct);
                    if (guardado == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Products();
                        Fetch_product(id);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al actualizar el registro');", true);

                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al editar el registro.');", true);
            }


        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id;
            var isNumber = int.TryParse(ProductId.Text.Trim(), out id);

            if (isNumber)
            {
                int eliminado = Metodos.Delete_Product(id);

                if(eliminado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El producto se eliminó con éxito.');", true);
                    Load_Products();
                    Product.Text = string.Empty;
                    Marca.Text = string.Empty;
                    Precio.Text = string.Empty;
                    Inventario.Text = string.Empty;
                    TipoProducto.Text = string.Empty;
                    ImagePreview.ImageUrl = null;
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al eliminar el registro');", true);
            }

        }
        protected void Fetch_product(int id)
        {
            try
            {
                Producto respuesta = Metodos.Search_Product(id);
                if (respuesta.Id != 0)
                {
                    ImagePreview.ImageUrl = "/images/" + respuesta.Imagen;
                    Product.Text = respuesta.Product;
                    Marca.Text = respuesta.Marca;
                    Precio.Text = respuesta.Precio.ToString();
                    Inventario.Text = respuesta.Inventario.ToString();
                    TipoProducto.Text = respuesta.TipoProduct.ToString();

                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al obtener los datos');", true);

            }
            catch (Exception exc)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al obtener los datos');", true);
            }
        }
    }
}