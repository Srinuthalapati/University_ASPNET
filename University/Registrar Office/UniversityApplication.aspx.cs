using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class UniversityApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                string sessionsend = "studentapplicant";
                Session["sender"] = sessionsend;
                Response.Redirect("../UserRegistration.aspx");
            }
            txtSuserid.Text = (string)Session["user_id"];

        }
        protected void btnaddEduHistory_Click(object sender, EventArgs e)
        {
            PanelAddEducationHistory.Visible = true;
            PanelGVEducationHistory.Visible = false;
        }

        protected void btnedusubmit_Click(object sender, EventArgs e)
        {
            SqlEducationHistory.InsertParameters["user_id"].DefaultValue = (string)txtSuserid.Text.ToUpper().Trim();
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

        protected void SubButton_Click(object sender, EventArgs e)
        {
            SqlStudentAppli.InsertParameters["suser_id"].DefaultValue = txtSuserid.Text;
            SqlStudentAppli.InsertParameters["degree"].DefaultValue = DegreeRadioButton.SelectedValue;
            SqlStudentAppli.InsertParameters["major"].DefaultValue = MajorDropDown.SelectedValue;
            SqlStudentAppli.InsertParameters["gre_score"].DefaultValue = GRETextBox.Text;
            SqlStudentAppli.InsertParameters["gre_test_date"].DefaultValue = GDATETextBox.Text;
            SqlStudentAppli.InsertParameters["ielts_score"].DefaultValue = IELTSTextBox.Text;
            SqlStudentAppli.InsertParameters["ielts_test_date"].DefaultValue = IDATETextBox.Text;
            SqlStudentAppli.InsertParameters["toefl"].DefaultValue = TOEFLTextBox.Text;
            SqlStudentAppli.InsertParameters["toefl_test_date"].DefaultValue = TDATETextBox.Text;
            SqlStudentAppli.InsertParameters["admission_status"].DefaultValue = DropDownList1.SelectedValue;
            SqlStudentAppli.Insert();
            

            txtSuserid.Text = String.Empty;
            GRETextBox.Text = String.Empty;
            GDATETextBox.Text = String.Empty;
            IELTSTextBox.Text = String.Empty;
            IDATETextBox.Text = String.Empty;
            TOEFLTextBox.Text = String.Empty;
            TDATETextBox.Text = String.Empty;
            TDATETextBox.Text = String.Empty;


        }
    }
}