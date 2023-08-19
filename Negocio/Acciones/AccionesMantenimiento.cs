using Datos.DBConexion;
using Modelo;
using Modelo.Acciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
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

        public void Cambiar_Estado(string user)
        {
            dbLibContext.Registro(user);
        }

        

        //Guardar nuevos mantenimientos        
        #region Guardar nuevos usuarios
        public string RegistrarMant(string txtDescripcion, string txtNombre)
        {           

            try
            {
                LogMantenimiento_Tabla tabla;
                bool validar = false;
                while(validar == false)
                {
                    
                    var usuario = dbLibContext.Lista_Usuarios.FirstOrDefault(u => u.Nom_Usuario == txtNombre);
                    if (usuario != null)
                    {
                        // Obtener el valor si el usuario existe
                        var valor = usuario.Estatus;
                        validar = true;
                    }
                    else
                    {
                        return "Es usuario es incorrecto.";
                    }
                }                
                

                tabla = new LogMantenimiento_Tabla
                {
                    Descripcion = txtDescripcion,
                    Nom_Usuario = txtNombre,
                    Fecha = DateTime.Now,
                    Estatus = "Activo"

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
