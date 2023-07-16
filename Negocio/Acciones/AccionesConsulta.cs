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
        //Metodo de listado 
        #region Listado
        public List<Motele> listMoteles()
            {
                return dbLibContext.Moteles.ToList();

            }
        #endregion

        //Metodo para guardar
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

            return resultado;

        }

        #endregion


        }
}
