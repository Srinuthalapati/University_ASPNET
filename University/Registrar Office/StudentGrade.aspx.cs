using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class Student_Grade_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void SqlGrade_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GradeButton_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            //SqlGrade.InsertParameters["grade"].DefaultValue = GridView2.gr;
        }

       
    }
}