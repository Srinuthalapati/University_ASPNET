using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            /*eventSource2.SelectCommand = "Select * from event where event_start_date between" + TextBox1.Text + " and '"+TextBox2.Text+"' and event_place ='" + DropDownList1.SelectedValue+"'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            GridView view = new GridView();
            view = (GridView)eventSource2.Select(data);*/
        }
    }
}