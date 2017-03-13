using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Service_RequestForm : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            servicesource.InsertParameters["service_type"].DefaultValue = DropDownList1.SelectedValue;
            servicesource.InsertParameters["service_req_time"].DefaultValue = DropDownList2.SelectedValue;
            servicesource.InsertParameters["service_req_date"].DefaultValue = TextBox2.Text.ToUpper().Trim();
            servicesource.InsertParameters["room_no"].DefaultValue = DropDownList3.SelectedValue;
           
            servicesource.Insert();

            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;

        }
    }
}