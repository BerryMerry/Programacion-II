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
        // Vinculacion a Acciones Consulta en capa de Datos
        public AccionesConsulta consulta = new AccionesConsulta();
        
        //Retorno de vista para poder registrar moteles
        public ActionResult Registrar()
        {
            return View();
        }


        [HttpPost]

        //Introduccion de datos leidos a la base de datos
            public string RegistrarDatos(string nombre_text = "",string Ubicacion_text = "", int idsector = 0, int Pago1 = 0, int Pago2 =0)
            {
                
                return consulta.registrarMotel(nombre_text, Ubicacion_text,idsector, Pago1, Pago2);
            }

        //Retorno de vista de administrador a partir de login
        public ActionResult VistaAdministrador() 
        {
            return View();
        }

        //Retorno de vista de cliente a partir de login
        public ActionResult VistaCliente() 
        {
            return View();
        }


    }
}