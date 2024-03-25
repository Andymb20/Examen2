using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Formularios
{
    public partial class Encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Asegúrate de que los elementos existen en tu formulario
            if (!IsPostBack)
            {
                // Código para cargar elementos en el formulario
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Código para manejar el evento de clic del botón
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Encuesta encuesta = new Encuesta();
                encuesta.Nombre = txtNombre.Text;
                encuesta.Apellido = txtApellido.Text;
                encuesta.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);
                encuesta.Edad = int.Parse(txtEdad.Text);
                encuesta.Correo = txtCorreo.Text;
                encuesta.CarroPropio = rblCarroPropio.SelectedValue == "true";

                // Aquí puedes agregar el código para guardar la encuesta en tu base de datos
            }

        }

        protected TextBox txtNombre;
        protected TextBox txtApellido;
        protected TextBox txtFechaNacimiento;
        protected TextBox txtEdad;
        protected TextBox txtCorreo;
        protected RadioButtonList rblCarroPropio;

        public object CorreoElectronico { get; internal set; }
        public bool CarroPropio { get; internal set; }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            // Genera un número de formulario único.
            lblNumeroFormulario.Text = GenerarNumeroFormulario();

            EncuestaModelo encuesta = new EncuestaModelo();


            // Guarda los datos del formulario.
            GuardarDatosFormulario();

            // Limpia el formulario para la próxima entrada.
            LimpiarFormulario();
        }

        private string GenerarNumeroFormulario()
        {

            return Guid.NewGuid().ToString();
        }

        private void GuardarDatosFormulario()
        {

            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string fechaNacimiento = txtFechaNacimiento.Text;
            string edad = txtEdad.Text;
            string correo = txtCorreo.Text;
            bool carroPropio = rblCarroPropio.SelectedValue == "true";
        }

        private void LimpiarFormulario()
        {
            // Limpia todos los campos del formulario.
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtFechaNacimiento.Text = string.Empty;
            txtEdad.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            rblCarroPropio.ClearSelection();
        }

        public class EncuestaModelo
        {
            public int NumeroEncuesta { get; set; }
            public string Nombre { get; set; }
            public string Apellido { get; set; }
            public DateTime FechaNacimiento { get; set; }
            public int Edad { get; set; }
            public string Correo { get; set; }
            public bool CarroPropio { get; set; }
        }

    }


}