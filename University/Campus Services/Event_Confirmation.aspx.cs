using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Event_Confirmation : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            eventSource1.SelectCommand = "Select event_place,event_start_date,event_start_time,event_capacity,event_end_date,event_end_time from event where user_id='" + TextBox24.Text + "'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            view = (DataView)eventSource1.Select(data);
            TextBox18.Text = view[0].Row["event_place"].ToString();
            TextBox23.Text = view[0].Row["event_start_date"].ToString();
            TextBox25.Text = view[0].Row["event_start_time"].ToString();
            TextBox20.Text = view[0].Row["event_capacity"].ToString();
            TextBox21.Text = view[0].Row["event_end_date"].ToString();
            TextBox22.Text = view[0].Row["event_end_time"].ToString();            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox18.Text = string.Empty;
            TextBox23.Text = string.Empty;
            TextBox25.Text = string.Empty;
            TextBox20.Text = string.Empty;
            TextBox21.Text = string.Empty;
            TextBox22.Text = string.Empty;
        }
    }
}