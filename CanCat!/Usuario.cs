using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CanCat_
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string User { get; set; }
        public string Contra { get; set; }
        public string Correo { get; set; }
        public string Foto { get; set; }
        public int TipoUser { get; set; }
    }
}