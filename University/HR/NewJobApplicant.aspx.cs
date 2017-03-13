using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.HR
{
    public partial class NewJobApplicant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                string sessionsend = "jobapplicant";
                Session["sender"] = sessionsend;
                Response.Redirect("../UserRegistration.aspx");
            }
            txtUserid.Text = (string)Session["user_id"];
        }

        protected void btnaddEduHistory_Click(object sender, EventArgs e)
        {
            PanelAddEducationHistory.Visible = true;
            PanelGVEducationHistory.Visible = false;
        }

        protected void btnedusubmit_Click(object sender, EventArgs e)
        {
            SqlEducationHistory.InsertParameters["user_id"].DefaultValue = (string)txtUserid.Text.ToUpper().Trim();
            SqlEducationHistory.InsertParameters["school_name"].DefaultValue = txtSchoolName.Text.ToUpper().Trim();
            SqlEducationHistory.InsertParameters["degree"].DefaultValue = txtdegree.Text.ToUpper().Trim();
            SqlEducationHistory.InsertParameters["major"].DefaultValue = txtmajor.Text.ToUpper().Trim();
            SqlEducationHistory.InsertParameters["gpa"].DefaultValue = (string)txtgpa.Text.Trim();
            SqlEducationHistory.InsertParameters["graduated_year"].DefaultValue = (string)txtgraduated_year.Text.Trim();
            SqlEducationHistory.Insert();
            gvEducationHistory.DataBind();
            PanelAddEducationHistory.Visible = false;
            PanelGVEducationHistory.Visible = true;
            txtSchoolName.Text = string.Empty;
            txtdegree.Text = string.Empty;
            txtmajor.Text = string.Empty;
            txtgpa.Text = string.Empty;
            txtgraduated_year.Text = string.Empty;

        }

        protected void btneduclear_Click(object sender, EventArgs e)
        {
            txtSchoolName.Text = string.Empty;
            txtdegree.Text = string.Empty;
            txtmajor.Text = string.Empty;
            txtgpa.Text = string.Empty;
            txtgraduated_year.Text = string.Empty;
        }

        protected void btnaddEmpHistory_Click(object sender, EventArgs e)
        {
            PanelAddEmpHistory.Visible = true;
            PanelgvEmploymentHistory.Visible = false;
        }

        protected void btnempsubmit_Click(object sender, EventArgs e)
        {
            SqlEmpHistory.InsertParameters["juser_id"].DefaultValue = (string)txtUserid.Text.ToUpper().Trim();
            SqlEmpHistory.InsertParameters["employer_name"].DefaultValue = txtEmployerName.Text.ToUpper().Trim();
            SqlEmpHistory.InsertParameters["designation"].DefaultValue = txtDesignation.Text.ToUpper().Trim();
            SqlEmpHistory.InsertParameters["duration"].DefaultValue = (string)txtDuration.Text.ToUpper().Trim();
            SqlEmpHistory.InsertParameters["job_description"].DefaultValue = txtJobdescription.Text.Trim();
            SqlEmpHistory.Insert();
            gvEducationHistory.DataBind();
            PanelAddEmpHistory.Visible = false;
            PanelgvEmploymentHistory.Visible = true;
            txtEmployerName.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDuration.Text = string.Empty;
            txtJobdescription.Text = string.Empty;
        }

        protected void btnempclear_Click(object sender, EventArgs e)
        {
            txtEmployerName.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDuration.Text = string.Empty;
            txtJobdescription.Text = string.Empty;
        }

        protected void btnSubmitForm_Click(object sender, EventArgs e)
        {
            Session["juser_id"] = Session["user_id"];
            Response.Redirect("JobApplication.aspx");
        }
    }
}