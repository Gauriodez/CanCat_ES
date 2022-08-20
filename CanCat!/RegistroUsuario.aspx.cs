using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Drawing;


namespace CanCat_
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                bool logged_in = Convert.ToBoolean(Session["logged_in"]);
                if (logged_in)
                    Response.Redirect("index.aspx");

            }
            catch (Exception ex)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void BtnRgstrUsuario(object sender, EventArgs e) //botton registar.

        {
            if (txtfirst.Text.Trim() != "" && txtapellido.Text.Trim() != "" && txtusuario.Text.Trim() != "" && txtclave.Text.Trim() != "" && txtconfirm.Text.Trim() != "" &&   txtgmail.Text.Trim() != "")
            {
                if (txtclave.Text == txtconfirm.Text)
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
                        strFilePath = strFolder + strFileName;
                        if (!File.Exists(strFilePath))
                        {
                            PhotoFile.PostedFile.SaveAs(strFilePath);
                        }
                        
                        
                        string foto = strFileName;


                        string nombre = txtfirst.Text.Trim();
                        string apellido = txtapellido.Text.Trim();
                        string usuario = txtusuario.Text.Trim();
                        string contra = txtclave.Text.Trim();
                        string confirmcontra = txtconfirm.Text.Trim();
                        string correo = txtgmail.Text.Trim();
                        int registrado = Metodos.AgregarUsuario(nombre, apellido, usuario, contra, confirmcontra, correo, foto);

                        if (registrado != 0)
                        {
                            alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success');setTimeout(function(){window.location = 'login.aspx';}, 1400); </script>";



                        }

                        else
                        {
                            alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Escoge un nuevo nombre de usuario', 'error'); </script>";
                        }
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
                }


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

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}