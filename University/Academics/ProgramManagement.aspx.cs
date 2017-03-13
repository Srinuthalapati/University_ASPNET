using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class ProgramManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewProgramButton_Click(object sender, EventArgs e)
        {        
            Response.Redirect("ProgramCreation.aspx");
        }

        protected void DeleteProgramButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProgramDeletion.aspx");
        }
    }
}