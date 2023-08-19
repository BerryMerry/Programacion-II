using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos.DBConexion;
using System.Data;
using Modelo.Acciones;

namespace Modelo
{
    public class AccionesBD
    {
        public DBLibraryEntityDataContext dbLibContext = new DBLibraryEntityDataContext();
    }
   
}
