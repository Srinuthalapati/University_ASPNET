using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            eventsource.InsertParameters["event_title"].DefaultValue = TextBox7.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_start_date"].DefaultValue = TextBox10.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_end_date"].DefaultValue = TextBox12.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_end_time"].DefaultValue = TextBox24.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_start_time"].DefaultValue = TextBox11.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_place"].DefaultValue = CheckBoxList1.SelectedValue;
            eventsource.InsertParameters["event_capacity"].DefaultValue = TextBox15.Text.Trim();
            eventsource.InsertParameters["multi_day_event"].DefaultValue = RadioButtonList1.SelectedValue;
            eventsource.InsertParameters["audio_visual"].DefaultValue = RadioButtonList2.SelectedValue;
            eventsource.InsertParameters["user_id"].DefaultValue = TextBox25.Text.Trim();
            
            eventsource.Insert();
          
            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox24.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox25.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox15.Text = string.Empty;
            TextBox8.Text = string.Empty;
            CheckBoxList1.ClearSelection();
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox24.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox25.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox15.Text = string.Empty;
            TextBox8.Text = string.Empty;
            CheckBoxList1.ClearSelection();
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            eventsource.SelectCommand = "Select first_name,last_name,email_id,contact_no from user_info where user_id='" +TextBox25.Text+ "'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            view = (DataView)eventsource.Select(data);
            /*TextBox25.Text = view[0].Row["user_id"].ToString();*/
            TextBox2.Text = view[0].Row["first_name"].ToString();
            TextBox3.Text = view[0].Row["last_name"].ToString();
            TextBox5.Text = view[0].Row["contact_no"].ToString();
            TextBox6.Text = view[0].Row["email_id"].ToString();
          
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
    }
