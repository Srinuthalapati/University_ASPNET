using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacultyCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DeptIDDDL.SelectedValue;
            FacultyIDTB.Text = FacultyIDDDL.SelectedValue;
        }

        protected void FacultyCreateClearButton_Click(object sender, EventArgs e)
        {
            FacultyIDTB.Text = string.Empty;
            FacultySpecializationTB.Text = string.Empty;
            FacultyEducationTB.Text = string.Empty;
            ContractHoursTB.Text = string.Empty;

        }

        protected void FacultyCreateSubmitButton_Click(object sender, EventArgs e)
        {
            FacultyInsertDataSource.InsertParameters["fuser_id"].DefaultValue = FacultyIDDDL.SelectedValue;
            FacultyInsertDataSource.InsertParameters["specalization"].DefaultValue = FacultySpecializationTB.Text.ToUpper().Trim();
            FacultyInsertDataSource.InsertParameters["education"].DefaultValue = FacultyEducationTB.Text.ToUpper().Trim();
            FacultyInsertDataSource.InsertParameters["contract"].DefaultValue = ContractHoursTB.Text.Trim();
            FacultyInsertDataSource.InsertParameters["department_id"].DefaultValue = DeptIDDDL.SelectedValue;
            FacultyInsertDataSource.Insert();

            string message = "Selected Faculty is now works under the selected Department - Successful.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }

        protected void FacultyIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            FacultyIDTB.Text = FacultyIDDDL.SelectedValue;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignFacultyToCourse1.aspx");
        }

        protected void DeptIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DeptIDDDL.SelectedValue;
        }
    }
}