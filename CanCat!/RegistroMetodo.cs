using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CanCat_
{
    public class RegistroMetodo
    {
        private int id;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string nombre;
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string apellido;
        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        private string usuario;
        public string Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        private string correo;
        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }
        private int tipouser;
        public int TipoUser
        {
            get { return tipouser; }
            set { tipouser = value; }
        }

        private string foto;
        public string Foto
        {
            get { return foto; }
            set { foto = value; }
        }
        

    }
}