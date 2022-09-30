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
            //////////////////////////////////////////////////////////
            bool fechaValida = true;
            DateTime FechaNac = Convert.ToDateTime(fechaNac).Date;
            DateTime FechaIng = Convert.ToDateTime(fechaIng).Date;
            DateTime dtHoy = System.DateTime.Now;

            if (FechaIng < FechaNac)
            {
                lblError1.Visible = true;
                lblError1.Text = "La Fecha de ingreso en menos a la fecha de Nacimiento";
                fechaValida = false;
            }
            else
            {
                lblError1.Visible = false;
                fechaValida = true;
            }
            if (FechaIng > dtHoy)
            {
                lblError2.Visible = true;
                lblError2.Text = "la Fecha de ingreso es mayor a la fecha de Hoy";
                fechaValida = false;
            }
            else
            {
                lblError2.Visible = false;
                fechaValida = true;
            }
            if (FechaNac > dtHoy)
            {
                lblError3.Visible = true;
                lblError3.Text = "la fecha de Nacimiento es mayor a la fecha de Hoy";
                fechaValida = false;
            }
            else
            {
                lblError3.Visible = false;
                fechaValida = true;
            }
            
            return fechaValida;
            ///////////////////////////////////////////////////////
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
        }
    }
}