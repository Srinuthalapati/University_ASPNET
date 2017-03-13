using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveUser_Click(object sender, EventArgs e)
        {
            SqlUser_info.InsertParameters["first_name"].DefaultValue =txtFirstName.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["last_name"].DefaultValue = txtLastName.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["date_of_birth"].DefaultValue = txtDob.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["gender"].DefaultValue = gender.SelectedValue;
            SqlUser_info.InsertParameters["email_id"].DefaultValue = txtEmail.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["contact_no"].DefaultValue = txtContactno.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["nationality"].DefaultValue = txtNationality.Text.Trim();
            SqlUser_info.InsertParameters["ssn"].DefaultValue = txtSSN.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["address_line1"].DefaultValue = txtAddressLine1.Text.ToUpper().Trim();

            SqlUser_info.InsertParameters["address_line2"].DefaultValue = txtAddressLine2.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["city"].DefaultValue = txtCity.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["state_of_res"].DefaultValue = txtState.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["zip_code"].DefaultValue = txtZipcode.Text.ToUpper().Trim();
            SqlUser_info.InsertParameters["country"].DefaultValue = txtCountry.Text.ToUpper().Trim();
            SqlUser_info.Insert();


            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtDob.Text = string.Empty;

            txtEmail.Text = string.Empty;
            txtContactno.Text = string.Empty;
            txtNationality.Text = string.Empty;
            txtSSN.Text = string.Empty;
            txtAddressLine1.Text = string.Empty;
            txtAddressLine2.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtZipcode.Text = string.Empty;
            txtCountry.Text = string.Empty;

            msg.Text = "User Registered";

            Sqlgetuserid.SelectCommand = "Select MAX(user_id) as user_id from user_info";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)Sqlgetuserid.Select(dsArguments);

            string userid = dvView[0].Row["user_id"].ToString();
            Session["user_id"] = userid;
            string strsender = (string)Session["sender"];
            if ( strsender.Equals("jobapplicant"))
            {
                Response.Redirect("HR/NewJobApplicant.aspx");
            }
            if (strsender.Equals("studentapplicant"))
            {
                Response.Redirect("Registrar Office/UniversityApplication.aspx");
            }
        }

        protected void btnCancelUser_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtDob.Text = string.Empty;

            txtEmail.Text = string.Empty;
            txtContactno.Text = string.Empty;
            txtNationality.Text = string.Empty;
            txtSSN.Text = string.Empty;
            txtAddressLine1.Text = string.Empty;
            txtAddressLine2.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtZipcode.Text = string.Empty;
            txtCountry.Text = string.Empty;
        }

        protected void calDateofBirth_SelectionChanged(object sender, EventArgs e)
        {
            txtDob.Text = calDOB.SelectedDate.ToShortDateString();
            calpanel.Visible = false;
        }

        protected void calimgDOB_Click(object sender, ImageClickEventArgs e)
        {
            calpanel.Visible = true;
        }

        protected void SqlUser_info_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}