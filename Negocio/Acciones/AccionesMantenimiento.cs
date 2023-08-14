using Datos.DBConexion;
using Modelo;
using Modelo.Acciones;
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

        public string User;

        //Guardar nuevos mantenimientos        
        #region Guardar nuevos usuarios
        public string RegistrarMant(string txtDescripcion)
        {
            

                try
            {
                LogMantenimiento_Tabla tabla;
                

                tabla = new LogMantenimiento_Tabla
                {
                    Descripcion = txtDescripcion,
                    Nom_Usuario = User,
                    Fecha = DateTime.Now
                };
                dbLibContext.LogMantenimiento_Tablas.InsertOnSubmit(tabla);
                dbLibContext.SubmitChanges();
                return "Se guardo correctamente";

            }
            catch
            {
                return "No se guardo";
            }

        }
        #endregion

    }
}
