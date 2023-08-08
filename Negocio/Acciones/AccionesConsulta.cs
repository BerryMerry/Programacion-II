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
        public List<Motel> listMoteles()
            {
            return dbLibContext.Motels.ToList();
            }
        //Listar la tabla de motel formas de pago
        public List<Motel_Forma_Pago> listMPagos()
        {
            return dbLibContext.Motel_Forma_Pagos.ToList();
        }

        public List<_HabitacionXMotel> listHabitacion()
        {
            return dbLibContext._HabitacionXMotels.ToList();
        }

        //public List<Formas_de_pagoXMotele> listFormadePago()
        //{
        //    return dbLibContext.Formas_de_pagoXMoteles.ToList();
        //}

       
        #endregion

        //Metodo para guardar datos de moteles en la base de datos
        #region Registrar
        public string registrarMotel(string nombre, string ubicacion, int idsector,int formaPago1 , int formapago2)
        {
            string resultado = "";
            try
            {
                Motel moteles;
                Motel_Forma_Pago Pagos;

                moteles = new Motel
                {
                    Nombre = nombre,
                    Ubicacion = ubicacion,
                    Id_Sector = idsector
                    
                };
                dbLibContext.Motels.InsertOnSubmit(moteles);
                dbLibContext.SubmitChanges();

                //buscar el ultimo id insertado
                int maxHotel = dbLibContext.Motels.Max(x => x.Id_Motel);


                //validar cual forma de pago fue seleccionada
                int tipoPagos = (formaPago1 > 0 || formapago2 > 0) ? 1 : 2 ;
                //Guardando las formas de pago
                if (formaPago1 > 0 && formapago2 > 0)
                {
                    Pagos = new Motel_Forma_Pago
                    {
                        Id_Motel = maxHotel,
                        Id_Formas_Pago = formaPago1

                    };
                    dbLibContext.Motel_Forma_Pagos.InsertOnSubmit(Pagos);
                    dbLibContext.SubmitChanges();
                    Pagos = new Motel_Forma_Pago
                    {
                        Id_Motel = maxHotel,
                        Id_Formas_Pago = formapago2

                    };
                }
                else
                {
                    Pagos = new Motel_Forma_Pago
                    {
                        Id_Motel = maxHotel,
                        Id_Formas_Pago = tipoPagos

                    };
                }
                

                
                     
               
                dbLibContext.Motel_Forma_Pagos.InsertOnSubmit(Pagos);
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
        
        //Guardar nuevos usuarios        
        #region
        public string ReidtrarUsuarios(string Usuario, string pws)
        {
            try
            {
                Lista_Usuario usuario;

                usuario = new Lista_Usuario
                {
                    Nom_Usuario = Usuario,
                    Psswd = pws,
                    Tipo_usuario = "Client"
                };

                dbLibContext.Lista_Usuarios.InsertOnSubmit(usuario);
                dbLibContext.SubmitChanges();
                return "Se guardo correctamente";

            }catch
            {
                return "No se guardo";
            }

        }
        #endregion
         

    }
}
