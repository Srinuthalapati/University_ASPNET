using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacultyLoadReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DeptIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DeptIDDDL.SelectedValue;
        }

        protected void FacultyIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            FacultyIDTB.Text = FacultyIDDDL.SelectedValue;

            //CreditsSUMTB.Text = "7";


        }
    }
}