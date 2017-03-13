using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.HR
{
    public partial class Position : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlPosition.InsertParameters["job_type"].DefaultValue = selJobtype.SelectedValue;
            SqlPosition.InsertParameters["designation"].DefaultValue = txtdesignation.Text.ToUpper().Trim();
            SqlPosition.InsertParameters["roles_responsibilities"].DefaultValue = txtrolesresp.Text.ToUpper().Trim();
            SqlPosition.InsertParameters["department_id"].DefaultValue = seldept.SelectedValue;
            SqlPosition.InsertParameters["salary"].DefaultValue = txtSalary.Text.ToUpper().Trim();
            SqlPosition.InsertParameters["pay_frequency"].DefaultValue = selPayfrequency.SelectedValue;
            SqlPosition.Insert();

            gvPosition.DataBind();
            PanelAddPosition.Visible = false;
            PanelgvPosition.Visible = true;

            selJobtype.SelectedIndex = 0;
            txtdesignation.Text = string.Empty;
            txtrolesresp.Text = string.Empty;
            seldept.SelectedIndex = -1;
            txtSalary.Text = string.Empty;
            selPayfrequency.SelectedIndex = 0;
           
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            selJobtype.SelectedIndex = 0;
            txtdesignation.Text = string.Empty;
            txtrolesresp.Text = string.Empty;
            seldept.SelectedIndex = -1;
            txtSalary.Text = string.Empty;
            selPayfrequency.SelectedIndex = 0;
        }

        protected void btnaddPosition_Click(object sender, EventArgs e)
        {
            PanelAddPosition.Visible = true;
            PanelgvPosition.Visible = false;
        }
    }
}