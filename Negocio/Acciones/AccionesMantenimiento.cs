using Datos.DBConexion;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Acciones
{
    public  class AccionesMantenimiento : AccionesBD
    {
        public List<LogMantenimiento_Tabla> LogMantenimiento_Tablas()
        {
            return dbLibContext.LogMantenimiento_Tablas.ToList();
        }
    }
}
