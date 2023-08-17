using Datos.DBConexion;
using Modelo;
using Modelo.Acciones;
using Negocio.Acciones;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vente_Aqui2.Controllers
{

    public class MantenimientoController : Controller
    {
        public AccionesMantenimiento mant = new AccionesMantenimiento();
        

        //Llamar a vista para poder realizar el loggeo de las acciones de mantenimiento

       
        public ActionResult LogsMantenimiento()
        {
            List<LogMantenimiento_Tabla> Log = mant.LogMantenimiento_Tablas();
            return View(Log);
        }

        

        [HttpPost]        
        public string GuardarDatos(string txtDescripcion = "", string txtNombre = "")
        {
            try
            {
                mant.RegistrarMant(txtDescripcion, txtNombre);
                return "Se guardò correctamente.";
            }
            catch
            {
                return "No se pudo guardar.";
            }
        }

    }

}