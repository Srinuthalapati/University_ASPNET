using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class AcademicsHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AcademicsHomeBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcademicsHome.aspx");
        }

        protected void DepartmentBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentManagement.aspx");
            
        }

        protected void ProgramBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProgramManagement.aspx");
        }

        protected void CourseBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseManagement.aspx");
        }

        protected void FacultyBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignFacultyToCourse1.aspx");
        }

        protected void AssignFacultyCourseBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCourseAssignment.aspx");
        }

        protected void FacultyLoadReportBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyLoadReport.aspx");
        }
    }
}