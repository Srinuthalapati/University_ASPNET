using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class DepartmentManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewDeptButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentCreation.aspx");
        }

        protected void UpdateDeptButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentUpdation.aspx");
        }
    }
}