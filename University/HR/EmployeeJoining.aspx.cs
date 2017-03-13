using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.HR
{
    
    public partial class EmployeeJoining : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            SqlEmployee.InsertParameters["euser_id"].DefaultValue = (string)txtuserID.Text;
            SqlEmployee.InsertParameters["employement_status"].DefaultValue = ("active").ToUpper();
            SqlEmployee.InsertParameters["date_of_joining"].DefaultValue = dt.ToString();
            SqlEmployee.InsertParameters["position_id"].DefaultValue = (string)txtPositionId.Text;
            SqlEmployee.InsertParameters["employee_type"].DefaultValue = txtempType.Text.ToUpper().Trim(); 
            SqlEmployee.InsertParameters["salaryperhour"].DefaultValue = txtSalaryperhour.Text.ToUpper().Trim();
            SqlEmployee.InsertParameters["pay_frequency"].DefaultValue = txtPayFrequency.Text.ToUpper().Trim();
            SqlEmployee.Insert();

            txtuserID.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtDob.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContactno.Text = string.Empty;
            txtAddressLine.Text = string.Empty;
            txtPositionId.Text = string.Empty;
            txtJobtype.Text = string.Empty;
            txtPayFrequency.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDepartment.Text = string.Empty;
            txtSalaryperhour.Text = string.Empty;
            txtempType.Text = string.Empty;
            msg.Text = "New Employee Joined Successfully";
            
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtuserID.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtDob.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContactno.Text = string.Empty;
            txtAddressLine.Text = string.Empty;
            txtPositionId.Text = string.Empty;
            txtJobtype.Text = string.Empty;
            txtPayFrequency.Text = string.Empty;
            txtDesignation.Text = string.Empty;
            txtDepartment.Text = string.Empty;
            txtSalaryperhour.Text = string.Empty;
            txtempType.Text = string.Empty;
        }

        protected void txtuserID_TextChanged(object sender, EventArgs e)
        {
            SqlData.SelectCommand = "Select * from user_info where user_id = '" + txtuserID.Text + "'";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);

            txtFirstName.Text = dvView[0].Row["first_name"].ToString();
            txtLastName.Text = dvView[0].Row["last_name"].ToString();
            txtDob.Text = dvView[0].Row["date_of_birth"].ToString();
            txtEmail.Text = dvView[0].Row["email_id"].ToString();
            txtContactno.Text = dvView[0].Row["contact_no"].ToString();
            txtAddressLine.Text = dvView[0].Row["address_line1"].ToString() + " " + dvView[0].Row["address_line2"].ToString() + " " + dvView[0].Row["city"].ToString() + " " + dvView[0].Row["state_of_res"].ToString() + " " + dvView[0].Row["zip_code"].ToString() + " " + dvView[0].Row["country"].ToString();

            SqlData.SelectCommand = "Select * from job_application where juser_id = '" + txtuserID.Text + "' and status = 'APPROVED'" ;
            dvView = (DataView)SqlData.Select(dsArguments);
            string strvacancyid = dvView[0].Row["vacancy_id"].ToString();

            SqlData.SelectCommand = "Select * from vacancy  where vacancy_id = '" + strvacancyid + "'";
            dvView = (DataView)SqlData.Select(dsArguments);
            txtPositionId.Text = dvView[0].Row["position_id"].ToString();

            SqlData.SelectCommand = "Select * from position where position_id = '" + txtPositionId.Text + "'";
            dvView = (DataView)SqlData.Select(dsArguments);

            txtJobtype.Text = dvView[0].Row["job_type"].ToString();
            txtPayFrequency.Text = dvView[0].Row["pay_frequency"].ToString();
            txtDesignation.Text = dvView[0].Row["designation"].ToString();
            string strDeptID = dvView[0].Row["department_id"].ToString();

            SqlData.SelectCommand = "Select * from  department where department_id= '" + strDeptID + "'";

            dvView = (DataView)SqlData.Select(dsArguments);
            txtDepartment.Text = dvView[0].Row["department_name"].ToString();
      
        }
    }
}