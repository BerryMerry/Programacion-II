using Modelo;
using Modelo.Acciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vente_Aqui2.Controllers
{
    public class RegistrarController : Controller
    {
        // GET: Registrar
        public AccionesConsulta consulta = new AccionesConsulta();
        public ActionResult Registrar()
        {
            return View();
        }


        [HttpPost]
            public string RegistrarDatos(string nombre_text = "", string Ubicacion_text = "", int idcalificacion = 0, int idsector = 0)
            {
                
                return consulta.registrarMotel(nombre_text, Ubicacion_text, idcalificacion, idsector);
            }
    }
}