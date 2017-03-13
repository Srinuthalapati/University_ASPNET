using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace University.FinancialAid
{
    public partial class Student_Application_Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FinancialAid/Application_Status_FA.aspx?Student ID=" + TextBox1.Text);
        }
    }
}