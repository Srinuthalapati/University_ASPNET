using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class ProgramDeletion : System.Web.UI.Page
    {

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProgramManagement.aspx");
        }
    }
}