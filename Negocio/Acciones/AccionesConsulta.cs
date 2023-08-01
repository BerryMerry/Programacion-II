using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos.DBConexion;
using System.Data;
using System.Windows.Markup;

namespace Modelo.Acciones 
{ 

        public class AccionesConsulta : AccionesBD
        {
        //Metodo de listado de moteles 
        #region ListadoMoteles
        public List<Motele> listMoteles()
            {
            return dbLibContext.Moteles.ToList();
            }

        public List<_HabitacionXMotel> listHabitacion()
        {
            return dbLibContext._HabitacionXMotels.ToList();
        }

        public List<Formas_de_pagoXMotele> listFormadePago()
        {
            return dbLibContext.Formas_de_pagoXMoteles.ToList();
        }

       
        #endregion

        //Metodo para guardar datos de moteles en la base de datos
        #region Registrar
        public string registrarMotel(string nombre, string ubicacion, int idcalificacion, int idsector)
        {
            string resultado = "";
            try
            {
                Motele moteles = new Motele
                {
                    Nombre = nombre,
                    Ubicacion = ubicacion,
                    ID_Sector = idsector,
                    ID_Calificacion = idcalificacion,

                };

                dbLibContext.Moteles.InsertOnSubmit(moteles);
                dbLibContext.SubmitChanges();

                return resultado = "Se guardó correctamente";
            }
            catch (Exception e)
            {

                return resultado = "No se pudo guardar correctamente";
            }

            //return resultado;

        }

        #endregion

        //Accion de listado usuarios registrados

        #region ListadoUsuarios
        public List<Lista_Usuario> listadousuarios()
        {
            return dbLibContext.Lista_Usuarios.ToList();
        }
        #endregion

        }
}
