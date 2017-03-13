using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Financial_Aid
{
    public partial class Employee_GridScreen_FA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
     

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Response.Redirect("~/FinancialAid/Application_Review_FA.aspx?rowID=" + row.Cells[2].Text);
        }

        
    }
}