using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CanCat_
{
    public partial class crearusuarios : System.Web.UI.Page
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
                Response.Redirect("login");

            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            //string strFileName;
            //string strFilePath;
            //string strFolder;

            //strFolder = Server.MapPath("./images/");

            //if (PhotoFile.HasFile)
            //{
            //    strFileName = PhotoFile.PostedFile.FileName;
            //    strFileName = Path.GetFileName(strFileName);

            //    if (!Directory.Exists(strFolder))
            //    {
            //        Directory.CreateDirectory(strFolder);
            //    }
            //    // Save the uploaded file to the server.
            //    strFilePath = strFolder + strFileName;
            //    if (!File.Exists(strFilePath))
            //    {
            //        PhotoFile.PostedFile.SaveAs(strFilePath);
            //    }
            //    string product = Product.Text.Trim();
            //    double price = Convert.ToDouble(Price.Text.Trim());
            //    int qty = Convert.ToInt32(Quantity.Text.Trim());
            //    string image = strFileName;
            //    int guardado = Metodos.Add_Product(product, price, qty, image);

            //    if (guardado == 1)
            //    {
            //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registro guardado exitosamente');", true);

            //    }
            //    else
            //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Hubo un error al guardar los datos');", true);

            //}
        }
    }
}