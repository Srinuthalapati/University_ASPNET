using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;


namespace University.HR
{
    public partial class JobNotification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void calCloseDate_SelectionChanged(object sender, EventArgs e)
        {
            txtCloseDate.Text = calCloseDate.SelectedDate.ToShortDateString();
            calpanelCloseDate.Visible = false;
        }

        protected void calimgCloseDate_Click(object sender, ImageClickEventArgs e)
        {
            calpanelCloseDate.Visible = true;
        }

        protected void selPosition_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlData.SelectCommand = "Select position_id, job_type, designation, department_id, roles_responsibilities, salary, pay_frequency from position where position_id= '" + selPosition.SelectedValue + "'";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);


            txtJobtype.Text = dvView[0].Row["job_type"].ToString();
            txtSalary.Text = dvView[0].Row["salary"].ToString();
            txtrolesresp.Text = dvView[0].Row["roles_responsibilities"].ToString();
            txtPayFrequency.Text = dvView[0].Row["pay_frequency"].ToString();

            String strDeptID = dvView[0].Row["department_id"].ToString();
            SqlDepartment.SelectCommand = "Select department_name, department_id from  department where department_id= '" + strDeptID + "'";
            
            dvView = (DataView)SqlDepartment.Select(dsArguments);
            txtDepartment.Text = dvView[0].Row["department_name"].ToString();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            SqlVacancy.InsertParameters["position_id"].DefaultValue = selPosition.SelectedValue;
            SqlVacancy.InsertParameters["no_of_vacancies"].DefaultValue = txtnoofvacancies.Text.ToUpper().Trim();
            SqlVacancy.InsertParameters["req_qualification"].DefaultValue = txtRequiredQualification.Text.ToUpper().Trim();
            SqlVacancy.InsertParameters["duration"].DefaultValue = txtDuration.Text.ToUpper().Trim();
            SqlVacancy.InsertParameters["open_date"].DefaultValue = dt.ToString();
            SqlVacancy.InsertParameters["close_date"].DefaultValue = txtCloseDate.Text.ToUpper().Trim(); ;
            SqlVacancy.Insert();


            gvVacancy.DataBind();
            PanelAddVacancy.Visible = false;
            PanelgvVacancy.Visible = true;

            selPosition.SelectedIndex = 0;
            txtJobtype.Text = string.Empty;
            txtDepartment.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtPayFrequency.Text = string.Empty;
            txtrolesresp.Text = string.Empty;
            txtnoofvacancies.Text = string.Empty;
            txtRequiredQualification.Text = string.Empty;
            txtDuration.Text = string.Empty;
            txtCloseDate.Text = string.Empty;
           

        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            selPosition.SelectedIndex = 0;
            txtJobtype.Text = string.Empty;
            txtDepartment.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtPayFrequency.Text = string.Empty;
            txtrolesresp.Text = string.Empty;
            txtnoofvacancies.Text = string.Empty;
            txtRequiredQualification.Text = string.Empty;
            txtDuration.Text = string.Empty;
            txtCloseDate.Text = string.Empty;

        }

        protected void btnaddVacancy_Click(object sender, EventArgs e)
        {
            PanelAddVacancy.Visible = true;
            PanelgvVacancy.Visible = false;
        }
    }
}