using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CanCat_
{
    public class Producto
    {
        public bool Visible { get; set; }
        public int Id { get; set; }
        public string Product { get; set; }
        public string Marca { get; set; }
        public double Precio { get; set; }
        public int Inventario { get; set; }
        public string Imagen { get; set; }
        public int TipoProduct { get; set; }

    }
}