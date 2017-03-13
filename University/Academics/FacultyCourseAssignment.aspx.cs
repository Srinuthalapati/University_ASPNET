using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacultyCourseAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CourseIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

            CourseNameTB.Text = CourseIDDDL.SelectedValue;
        }

        protected void FacultyIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            FacultyNameTB.Text = FacultyIDDDL.SelectedValue;
        }

        protected void FacCrsSubmitBtn_Click(object sender, EventArgs e)
        {
            Faculty_Course_TBL.InsertParameters["fuser_id"].DefaultValue = FacultyIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["course_id"].DefaultValue = CourseIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["department_id"].DefaultValue = DeptIDDDList.SelectedValue;
            Faculty_Course_TBL.Insert();

            string message = "The selected Faculty, now, can teach the selected Course, successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }

        protected void FacCrsResetBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCourseAssignment.aspx");
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignFacultyToCourse1.aspx");
        }

        protected void DeptIDDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DeptIDDDList.SelectedValue;
        }
    }
}