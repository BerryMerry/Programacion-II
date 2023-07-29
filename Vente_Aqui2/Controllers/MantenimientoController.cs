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

        //Llamar a vista para poder realizar el loggeo de las acciones de mantenimiento
        public ActionResult LogMantenimiento()
        {
            return View();
        }

    }

}