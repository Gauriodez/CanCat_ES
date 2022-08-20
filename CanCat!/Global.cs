using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CanCat_
{
    public class Global
    {
        private static string _valorGlobal = string.Empty;
        public static string valorGlobal
        {
            get { return _valorGlobal; }
            set { _valorGlobal = value; }
        }
    }
}