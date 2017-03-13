using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.HR
{
    public partial class HRDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPosition_Click(object sender, EventArgs e)
        {
            Response.Redirect("Position.aspx");
        }

        protected void btnJobNotification_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobNotification.aspx");
        }

        protected void btnJobSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobSearch.aspx");
        }

        protected void btnJobstatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobApplicationStatus.aspx");
        }

        protected void btnEmployeeJoining_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeJoining.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeScreen.aspx");
        }
    }
}