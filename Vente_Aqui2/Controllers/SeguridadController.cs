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

        //Creando la vista del signup
        public ActionResult signup()
        {
            return View();
        }
        [HttpPost]
        public string RegistrarUsuario(string uname = "", string psw = "", string psw2 = "")
        {
           
            try
            {
                if (psw == psw2)
                {
                    validar.ReidtrarUsuarios(uname, psw2);
                    
                    return "Se registro el usuario";
                }
                else
                {
                    return "Hay que ver";
                    
                }
            }
            catch
            {
                return "Algo salio mal";
            }

        }
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

            if (Usuario.Exists(x => x.Nom_Usuario == uname && x.Psswd == psw && x.Tipo_usuario == "Admin"))
            {
                vista = "VistaAdministrador";
                controlador = "Registrar";
                return RedirectToAction(vista, controlador);
            }
            else if (Usuario.Exists(x => x.Nom_Usuario == uname && x.Psswd == psw && x.Tipo_usuario == "Client"))
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