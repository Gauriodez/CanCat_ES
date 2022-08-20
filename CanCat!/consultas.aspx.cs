using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace CanCat_
{
    public partial class consultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarlista1();
                llenarlista2();
                llenarlista3();
            }

        }

        protected void llenarlista1()
        {
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT ids, nombre_s FROM serv"), Conexion.ObtenerConexion());
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "nombre_s";
            DropDownList1.DataValueField = "ids";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("selecciona servicio", "0"));
        }

        protected void llenarlista2()
        {
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT id_especie, nombre_especie FROM especies_mascotas"), Conexion.ObtenerConexion());
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "nombre_especie";
            DropDownList2.DataValueField = "id_especie";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("especie", "0"));


        }


        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre_mascota = TextBox1.Text;
            string especie_mascota = Convert.ToString(DropDownList2.SelectedIndex);
            string servicio_sol = Convert.ToString(DropDownList1.SelectedValue);
            Calendar1.SelectedDate.ToString("YYYY-MM-DD");
            string fecha_hora = Convert.ToString(Calendar1.SelectedDate.ToString("yyyy-MM-dd"));
            string usuario_consulta = "1";
            string veterinario = Convert.ToString(DropDownList3.SelectedItem);

            Metodos.Agregar(servicio_sol, fecha_hora, especie_mascota, usuario_consulta, nombre_mascota, veterinario);


        }
        protected void llenarlista3()
        {
            MySqlCommand cmd = new MySqlCommand(String.Format("SELECT Id_Usuario, Nombre_Usuario FROM usuarios WHERE Tipo_Usuario = 2"), Conexion.ObtenerConexion());
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "Nombre_Usuario";
            DropDownList3.DataValueField = "Id_Usuario";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("veterinario", "0"));


        }

        protected void obtener_id_usuario_sesion()
        {
            
        }
    }
}