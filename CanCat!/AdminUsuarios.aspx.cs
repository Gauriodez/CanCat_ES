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
    public partial class AdminUsuarios : System.Web.UI.Page
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
            Load_Users();
        }

        protected void Load_Users()
        {
            DataTable myTable = Metodos.Fetch_Users(true);
            UsersList.DataSource = myTable;
            UsersList.DataBind();
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(UserId.Text);
            Fetch_Users(id);
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");
            try
            {
                int id = Convert.ToInt32(UserId.Text);
                string nombre = Nombre.Text.Trim();
                string apellido = Apellido.Text.Trim();
                string usuario = Usuario.Text.Trim();
                string correo = Correo.Text.Trim();
                int tipouser = Convert.ToInt32(UserId.Text);

                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }

                if (PhotoFile.HasFile)
                {
                    // Obtener el nombre del archivo subido.
                    strFileName = PhotoFile.PostedFile.FileName;
                    strFileName = Path.GetFileName(strFileName);
                    string foto = strFileName;
                    // Guardando el archivo en el servidor
                    strFilePath = strFolder + strFileName;
                    if (!File.Exists(strFilePath)) //Si el archivo subido no existe, lo crea en el servidor
                    {
                        PhotoFile.PostedFile.SaveAs(strFilePath);
                    }

                    int guardado = Metodos.Update_User(id, nombre, apellido, usuario, correo, foto, tipouser);
                    if (guardado == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Users();
                        Fetch_Users(id);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al actualizar el registro');", true);
                }
                else
                {
                    int guardado = Metodos.Update_User(id, nombre, apellido, usuario, correo, tipouser);
                    if (guardado == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El registro se actualizó con éxito.');", true);
                        Load_Users();
                        Fetch_Users(id);
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
            var isNumber = int.TryParse(UserId.Text.Trim(), out id);

            if (isNumber)
            {
                int eliminado = Metodos.Delete_User(id);

                if (eliminado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('El producto se eliminó con éxito.');", true);
                    Load_Users();
                    Nombre.Text = string.Empty;
                    Apellido.Text = string.Empty;
                    Usuario.Text = string.Empty;
                    Correo.Text = string.Empty;
                    TipoUser.Text = string.Empty;
                    ImagePreview.ImageUrl = null;
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al eliminar el registro');", true);
            }

        }
        protected void Fetch_Users(int id)
        {
            try
            {
                Usuario respuesta = Metodos.Search_User(id);
                if (respuesta.Id != 0)
                {
                    ImagePreview.ImageUrl = "/images/" + respuesta.Foto;
                    Nombre.Text = respuesta.Nombre;
                    Apellido.Text = respuesta.Apellido;
                    Usuario.Text = respuesta.User;
                    Correo.Text = respuesta.Correo;
                    TipoUser.Text = respuesta.TipoUser.ToString();

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