using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace CanCat_
{
    public partial class RegistroMascota : System.Web.UI.Page
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
        }

        protected void BtnRgstrMascota(object sender, EventArgs e) //botton registar.
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
                if (Pet.Text.Trim() != "" && Animal.Text.Trim() != "" && Raza.Text.Trim() != "" && Edad.Text.Trim() != "")
                {
                    int userId = (int)HttpContext.Current.Session["userId"];
                    string pet = Pet.Text.Trim();
                    string animal = Animal.Text.Trim();
                    string raza = Raza.Text.Trim();
                    int edad = Convert.ToInt32(Edad.Text.Trim());
                    string foto = strFileName;
                    string petId = Metodos.GetPetId();
                    int guardado = Metodos.AgregarMascota(userId, pet, animal, raza, edad, foto, petId);


                    if (guardado == 1)
                    {
                        alerta.Text = "<script>Swal.fire('Mascota registrada con éxito', '¡Gracias por preferirnos!', 'success'); </script>";
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Error con los datos','Hubo un error al guardar los datos', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}