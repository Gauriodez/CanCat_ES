using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

namespace CanCat_
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                bool isAdmin = Convert.ToBoolean(Session["isAdmin"]);
                bool isVet = Convert.ToBoolean(Session["isVet"]);
                bool isWorker = Convert.ToBoolean(Session["isWorker"]);
                if (logged_in)
                {
                    if (isAdmin)
                    {
                        Response.Redirect("admin.aspx");
                        Response.Redirect("index.aspx");
                    }
                    else if (isVet)
                    {
                        Response.Redirect("admin.aspx");
                        Response.Redirect("pricing.aspx");
                    }
                    else if (isWorker)
                    {

                    }


                }

            }
            catch (Exception ex)
            {
                Response.Redirect("index.aspx");
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            //string usuario;
            //string contra;
            if (TxtContra.Text != "" && TxtUsuario.Text != "")
            {
                string usuario = TxtUsuario.Text.Trim();
                string contra = TxtContra.Text.Trim();

                Global.valorGlobal = usuario;

                //MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= cancat!; Uid=root; pwd=;");
                //var cmd = "SELECT Id_Usuario from usuarios WHERE Nombre_Usuario='" + usuario + "' AND Password='" + contra + "';";
                //MySqlCommand comando = new MySqlCommand(cmd, conexion);
                //conexion.Open();
                //int retorno = Convert.ToInt32(comando.ExecuteScalar());
                int login = Metodos.Login(usuario, contra);
                int isAdmin = Metodos.Check_Admin(usuario);
                int isVet = Metodos.Check_Vet(usuario);
                int isWorker = Metodos.Check_Worker(usuario);

                if (/*retorno != 0 &*/ login != 0)
                {
                    Session["logged_in"] = true;
                    Session["username"] = usuario;
                    Session["userID"] = login;
                    Session["addedToCart"] = false;
                    Metodos.SetCartId();
                    Metodos.SetPetId();



                    if (/*retorno != 0 &*/ isAdmin == 1)
                    {
                        Session["isAdmin"] = true;
                        Response.Redirect("admin.aspx");
                    }
                    if (/*retorno != 0 &*/ isVet == 2)
                    {
                        Session["isVet"] = true;
                        Response.Redirect("contact.aspx");
                    }
                    if (/*retorno != 0 &*/ isWorker == 3)
                    {
                        Session["isWorker"] = true;
                        Response.Redirect("pricing.aspx");
                    }

                    Session["isAdmin"] = false;
                    Session["isWorker"] = false;
                    Session["isVet"] = false;
                    Response.Redirect("index.aspx");

                }

                else
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    TxtContra.Text = "";
                    TxtUsuario.Text = "";
                }
                }
            
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        //private const string initVector = "veterinCanCat2022";
        //// This constant is used to determine the keysize of the encryption algorithm
        //private const int keysize = 256;
        ////Encrypt
        //public static string EncryptString(string plainText, string passPhrase)
        //{
        //    byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
        //    byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
        //    PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
        //    byte[] keyBytes = password.GetBytes(keysize / 8);
        //    RijndaelManaged symmetricKey = new RijndaelManaged();
        //    symmetricKey.Mode = CipherMode.CBC;
        //    ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
        //    MemoryStream memoryStream = new MemoryStream();
        //    CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
        //    cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
        //    cryptoStream.FlushFinalBlock();
        //    byte[] cipherTextBytes = memoryStream.ToArray();
        //    memoryStream.Close();
        //    cryptoStream.Close();
        //    return Convert.ToBase64String(cipherTextBytes);
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}
