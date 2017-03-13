using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class AssignFacultyToCourse1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FacultyCreateButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCreation.aspx");
        }

        protected void FacultyUpdateButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyUpdation.aspx");
        }

        protected void FacultyAssignButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCourseAssignment.aspx");
        }

        protected void FacultyCreateButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCreation.aspx");
        }

        protected void UpdDelButon_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacCrsAssignmentUpdation.aspx");
        }
    }
}