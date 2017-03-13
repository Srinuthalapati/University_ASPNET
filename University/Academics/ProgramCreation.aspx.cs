using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class ProgramCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DepartmentIDDDList.SelectedValue;
        }

        protected void ProgramSubmitButton_Click(object sender, EventArgs e)
        {
            //int prgmid;
            //prgmid = Convert.ToInt16(ProgramCodeTB.Text);
            
            sqlprogram.InsertParameters["program_name"].DefaultValue = ProgramNameTB.Text.ToUpper().Trim();
            sqlprogram.InsertParameters["program_id"].DefaultValue = (string)ProgramCodeTB.Text;
            sqlprogram.InsertParameters["department_id"].DefaultValue = DepartmentIDDDList.SelectedValue;
            sqlprogram.InsertParameters["course_level"].DefaultValue = CourseLevelDDList.SelectedValue;
            sqlprogram.Insert();

            string message = "New Program is created successfully under the selected Department.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }

        protected void ProgramClearButton_Click(object sender, EventArgs e)
        {
            ProgramNameTB.Text = string.Empty;
            ProgramCodeTB.Text = string.Empty;
            Response.Redirect("ProgramCreation.aspx");
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProgramManagement.aspx");
        }

        protected void DepartmentIDDDList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepartmentIDTB.Text = DepartmentIDDDList.SelectedValue;
        }
    }
}