using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.HR
{
    public partial class JobApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["juser_id"] != null)
            {
                txtUserid.Text = (string)Session["juser_id"];
            }

        }
        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewJobApplicant.aspx");            
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            Sqljobapplication.InsertParameters["juser_id"].DefaultValue = (string)txtUserid.Text.ToUpper().Trim(); ;
            Sqljobapplication.InsertParameters["vacancy_id"].DefaultValue = (string)Session["vacancyId"];
            Sqljobapplication.InsertParameters["status"].DefaultValue = "APPLIED";
            Sqljobapplication.InsertParameters["date_applied"].DefaultValue = dt.ToString();
            Sqljobapplication.Insert();
            txtUserid.Text = string.Empty;
            msg.Text = "Job Application Submitted";
            

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobSearch.aspx");
        }
    }
}