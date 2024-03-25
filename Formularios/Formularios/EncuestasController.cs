using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;

namespace Formularios
{
    public class EncuestasController
    {
        private List<Encuesta> encuestas = new List<Encuesta>();

        public void AgregarEncuesta(Encuesta encuesta)
        {
            encuestas.Add(encuesta);
        }

        public int ContarEncuestas()
        {
            return encuestas.Count;
        }

        public int ContarConCarro()
        {
            return encuestas.Count(e => e.CarroPropio);

        }

        public int ContarSinCarro()
        {
            return encuestas.Count(e => !e.CarroPropio);
        }
    }

}
