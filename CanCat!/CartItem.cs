using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CanCat_
{
    public class CartItem
    {
        public int ItemId { get; set; }
        public int ProductID { get; set; }
        public int MarcaID { get; set; }
        public int UserId { get; set; }
        public int Cantidad { get; set; }
        public double Precio { get; set; }
        public string CartId { get; set; }
        
        
    }
}