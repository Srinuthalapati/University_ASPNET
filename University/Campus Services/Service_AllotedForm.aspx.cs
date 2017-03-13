using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Service_AllotedForm : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            servicesource.UpdateParameters["service_alloted_time"].DefaultValue = DropDownList4.SelectedValue;
            servicesource.UpdateParameters["service_alloted_date"].DefaultValue = TextBox4.Text;
            servicesource.UpdateParameters["status"].DefaultValue = DropDownList5.SelectedValue;
            servicesource.UpdateParameters["original_service_id"].DefaultValue = DropDownList7.SelectedValue;
            servicesource.Update();
            
            TextBox4.Text = string.Empty;
            
        }

        
    }
}