using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacCrsAssignmentUpdation : System.Web.UI.Page
    {


        protected void BackButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignFacultyToCourse1.aspx");
        }
            
       
    }
}