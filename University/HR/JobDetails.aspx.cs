using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.HR
{
    public partial class JobDetails : System.Web.UI.Page
    {
        string strvacancyID = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            strvacancyID = (string)Session["vacancyId"];
            
            SqlData.SelectCommand = "Select vacancy_id, position_id, req_qualification, duration, open_date, close_date from vacancy where vacancy_id= '" + strvacancyID + "'";             
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);
            
            txtDuration.Text = dvView[0].Row["duration"].ToString();
            txtRequiredQualification.Text = dvView[0].Row["req_qualification"].ToString();
            txtOpenDate.Text = dvView[0].Row["open_date"].ToString();
            txtCloseDate.Text = dvView[0].Row["close_date"].ToString();
            string strpositionID = dvView[0].Row["position_id"].ToString();

            SqlData.SelectCommand = "Select position_id, job_type, designation, department_id, roles_responsibilities, salary, pay_frequency from position where position_id = '" + strpositionID + "'";
            dvView = (DataView)SqlData.Select(dsArguments);

            txtDesignation.Text = dvView[0].Row["designation"].ToString();
            txtSalary.Text = dvView[0].Row["salary"].ToString();
            txtrolesresp.Text = dvView[0].Row["roles_responsibilities"].ToString();
            txtJobtype.Text = dvView[0].Row["job_type"].ToString();            
            txtPayFrequency.Text = dvView[0].Row["pay_frequency"].ToString();        
            String strDeptID = dvView[0].Row["department_id"].ToString();

            SqlData.SelectCommand = "Select department_name, department_id from  department where department_id= '" + strDeptID + "'";
            dvView = (DataView)SqlData.Select(dsArguments);
            txtDepartment.Text = dvView[0].Row["department_name"].ToString();
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Session["vacancyId"] = strvacancyID;
            Response.Redirect("JobApplication.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobSearch.aspx");
        }
    }
}