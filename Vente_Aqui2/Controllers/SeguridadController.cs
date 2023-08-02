using Modelo.Acciones;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Vente_Aqui2.Controllers
{
    public class SeguridadController : Controller
    {
        //Vinculacion a Acciones Consulta en capa de Datos
        public AccionesConsulta validar = new AccionesConsulta();

        //Retorno de vista para Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]

        //Proceso de verificacion de datos para el LogIn
        public ActionResult VerificarLogin(string uname, string psw) 
        {
            var Usuario = validar.listadousuarios().ToList();
            string vista= "";
            string controlador = "";

            if (Usuario.Exists(x => x.Nom_Usuario == uname && x.Psswd == psw && x.Tipo_usuario == "Administrador"))
            {
                vista = "VistaAdministrador";
                controlador = "Registrar";
                return RedirectToAction(vista, controlador);
            }
            else if (Usuario.Exists(x => x.Nom_Usuario == uname && x.Psswd == psw && x.Tipo_usuario == "Cliente"))
            {
                vista = "VistaCliente";
                controlador = "Registrar";
                return RedirectToAction(vista, controlador);
            }

            else {
                vista = "/Home/Error/";
            }
            return RedirectToAction("Home", "Home");

        }
    }
}