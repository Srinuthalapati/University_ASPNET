using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class DepartmentCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DepartmentSubmitButton_Click(object sender, EventArgs e)
        {
            sqldepartment.InsertParameters["department_name"].DefaultValue = DepartmentNameTB.Text.ToUpper().Trim();
            sqldepartment.InsertParameters["department_location"].DefaultValue = DepartmentLocationDDL.SelectedValue;
            sqldepartment.InsertParameters["department_phone_num"].DefaultValue = DepartmentPhoneNoTB.Text.ToUpper().Trim();
            sqldepartment.InsertParameters["department_email_id"].DefaultValue = DepartmentEmailIDTB.Text.ToUpper().Trim();
            sqldepartment.Insert();

            string message = "New Department is created successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            

        }

        protected void DepartmentClearButton_Click(object sender, EventArgs e)
        {
            DepartmentNameTB.Text = string.Empty;
            DepartmentPhoneNoTB.Text = string.Empty;
            DepartmentEmailIDTB.Text = string.Empty;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentManagement.aspx");
        }
    }
}