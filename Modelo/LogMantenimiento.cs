using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public  class LogMantenimiento
    {
        public int Id_Tabla { get; set; }
        public string Usuario { get; set; }
        public string Descripcion { get; set; }
        public DateTime Fecha { get; set; }
    }
}
