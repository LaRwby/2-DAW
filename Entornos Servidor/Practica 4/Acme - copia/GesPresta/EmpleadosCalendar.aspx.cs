using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus(); // Sitúa el foco en el elemento Código Empleado
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            string FechaNac = CalNacEmp.SelectedDate.ToShortDateString();
            string FechaIng = CalIngEmp.SelectedDate.ToShortDateString();
            TxtNacEmp.Text = FechaNac;
            TxtIngEmp.Text = FechaIng;
            
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            string FechaNac = CalNacEmp.SelectedDate.ToShortDateString();
            string FechaIng = CalIngEmp.SelectedDate.ToShortDateString();
            TxtIngEmp.Text = FechaIng;

            if (ValidarFecha(FechaNac,FechaIng))
            {
                TimeSpan Antiguedad = dtHoy - CalIngEmp.SelectedDate;
                DateTime fechamin = new DateTime(1, 1, 1);
                TxtAño.Text = ((fechamin + Antiguedad).Year - 1).ToString();
                TxtMes.Text = ((fechamin + Antiguedad).Month - 1).ToString();
                TxtDia.Text = ((fechamin + Antiguedad).Day - 1).ToString();
            }
        }
        public bool ValidarFecha(string fechaNac , string fechaIng)
        {
           
            bool fechaValida1, fechaValida2, fechaValida3, fechasValidas = false;
            DateTime FechaNac = Convert.ToDateTime(fechaNac).Date;
            DateTime FechaIng = Convert.ToDateTime(fechaIng).Date;
            DateTime dtHoy = System.DateTime.Now;

            if (FechaNac > FechaIng)
            {
                lblError1.Visible = true;
                lblError1.Text = "Error: La Fecha de ingreso en menos a la fecha de Nacimiento";
                TxtAño.Text = "";
                TxtMes.Text = "";
                TxtDia.Text = "";
                fechaValida1 = false;
            }
            else
            {
                lblError1.Visible = false;
                fechaValida1 = true;
            }
            if (FechaIng > dtHoy)
            {
                lblError2.Visible = true;
                TxtAño.Text = "";
                TxtMes.Text = "";
                TxtDia.Text = "";
                lblError2.Text = "Error: la Fecha de ingreso es mayor a la fecha de Hoy";
                fechaValida2 = false;
            }
            else
            {
                lblError2.Visible = false;
                fechaValida2 = true;
            }
            if (FechaNac > dtHoy)
            {
                lblError3.Visible = true;
                lblError3.Text = "Error: la fecha de Nacimiento es mayor a la fecha de Hoy";
                fechaValida3 = false;
            }
            else
            {
                lblError3.Visible = false;
                fechaValida3 = true;
            }
            if (fechaValida1 && fechaValida2 && fechaValida3)
            {
                fechasValidas = true;
            }
            
            return fechasValidas;
           
        }

        protected void TxtIngEmp_TextChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            CalIngEmp.SelectedDate = Convert.ToDateTime(TxtIngEmp.Text);
            CalIngEmp.VisibleDate = Convert.ToDateTime(TxtIngEmp.Text);
            string FechaNac = CalNacEmp.SelectedDate.ToShortDateString();
            string FechaIng = CalIngEmp.SelectedDate.ToShortDateString();

            if (ValidarFecha(FechaNac, FechaIng))
            {
                TimeSpan Antiguedad = dtHoy - CalIngEmp.SelectedDate;
                DateTime fechamin = new DateTime(1, 1, 1);
                TxtAño.Text = ((fechamin + Antiguedad).Year - 1).ToString();
                TxtMes.Text = ((fechamin + Antiguedad).Month - 1).ToString();
                TxtDia.Text = ((fechamin + Antiguedad).Day - 1).ToString();
            }
        }

        protected void TxtNacEmp_TextChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;
            CalNacEmp.SelectedDate = Convert.ToDateTime(TxtNacEmp.Text);
            CalNacEmp.VisibleDate = Convert.ToDateTime(TxtNacEmp.Text);
            string FechaNac = CalNacEmp.SelectedDate.ToShortDateString();
            string FechaIng = CalIngEmp.SelectedDate.ToShortDateString();
            if (TxtNacEmp.Text != "")
            {
                ValidarFecha(FechaNac, FechaIng);
            }
            
        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
                lblValores.Visible = true;
                lblValores.Text = "VALORES DEL FORMULARIO" +
                "<br/> Código Empleado: " + txtCodEmp.Text +
                "<br/> NIF: " + txtNifEmp.Text +
                "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
                "<br/> Dirección: " + txtDirEmp.Text +
                "<br/> Ciudad: " + txtCiuEmp.Text +
                "<br/> Teléfonos: " + txtTelEmp.Text +
                "<br/> Fecha de Nacimiento: " + TxtNacEmp.Text +
                "<br/> Fecha de Incorporación: " + TxtIngEmp.Text +
                "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
                "<br/> Departamento: " + ddlDepEmp.Text;
        }
    }
}