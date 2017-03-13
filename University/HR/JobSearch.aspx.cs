using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace University.HR
{
    public partial class JobSearch : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void lnkView_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            string vacancyid = gvSearchResults.DataKeys[row.RowIndex].Values[0].ToString();
            Session["vacancyId"] = vacancyid;
            Response.Redirect("JobDetails.aspx");
        }

        protected void lnkApply_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            string vacancyid = gvSearchResults.DataKeys[row.RowIndex].Values[0].ToString();
            Session["vacancyId"] = vacancyid;
            Response.Redirect("JobApplication.aspx");

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(seldept.SelectedIndex != 0 )
            {
                if (selPayfrequency.SelectedIndex != 0)
                {
                    SqlSearchResults.SelectCommand = "Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id and position.department_id = '" + seldept.SelectedValue + "' and position.pay_frequency = '" + selPayfrequency.SelectedValue + "'";
                    SqlSearchResults.DataBind();
                    gvSearchResults.DataBind();
                }
                else
                {
                    SqlSearchResults.SelectCommand = "Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id and position.department_id = '" + seldept.SelectedValue + "'";
                    SqlSearchResults.DataBind();
                    gvSearchResults.DataBind();

                }
            }
            else
            {
                if (selPayfrequency.SelectedIndex != 0)
                {
                    SqlSearchResults.SelectCommand = "Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id and position.pay_frequency = '" + selPayfrequency.SelectedValue + "'";
                    SqlSearchResults.DataBind();
                    gvSearchResults.DataBind();
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            selPayfrequency.SelectedIndex = 0;
            seldept.SelectedIndex = 0;
            SqlSearchResults.SelectCommand = "Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id";
            SqlSearchResults.DataBind();
            gvSearchResults.DataBind();

        }
    }
}