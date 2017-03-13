using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Hostel_Accomodation : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            roomsource.InsertParameters["room_type"].DefaultValue = DropDownList2.SelectedValue;
            roomsource.InsertParameters["user_id"].DefaultValue = TextBox11.Text.Trim();
            roomsource.InsertParameters["duration_stay"].DefaultValue = RadioButtonList2.SelectedValue;
            roomsource.InsertParameters["room_no"].DefaultValue = DropDownList1.SelectedValue;
            roomsource.InsertParameters["availability"].DefaultValue = TextBox14.Text;
            roomsource.Insert();

            TextBox11.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox14.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox13.Text = string.Empty;
            TextBox6.Text = string.Empty;

        }
           //protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
           // {
           //     if (string.Equals(RadioButtonList1.SelectedItem.Value, "Single bed room"))
           //     {
           //         DropDownList1.Visible = true;
                    
           //         roomsource.InsertParameters["room_no"].DefaultValue = DropDownList1.SelectedValue;
           //         roomsource.Insert();
           //     }
           //      if (string.Equals(RadioButtonList1.SelectedItem.Value, "Double bed room"))
           //     {
           //         DropDownList2.Visible = true;
           //         DropDownList1.Visible = false;
           //         roomsource.InsertParameters["room_no"].DefaultValue = DropDownList2.SelectedValue;
           //         roomsource.Insert();
           //     }
           //     else if (RadioButtonList1.SelectedItem == null)
           //     {
           //         string message = "Select the room type.";
           //         System.Text.StringBuilder sb = new System.Text.StringBuilder();
           //         sb.Append("<script type = 'text/javascript'>");
           //         sb.Append("window.onload=function(){");
           //         sb.Append("alert('");
           //         sb.Append(message);
           //         sb.Append("')};");
           //         sb.Append("</script>");
           //         ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
           //     }
            //}
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox11.Text = string.Empty;
            TextBox10.Text = string.Empty;
         TextBox14.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox13.Text = string.Empty;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            roomsource.SelectCommand = "Select first_name,last_name,contact_no,email_id from user_info where user_id='" + TextBox11.Text + "'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            view = (DataView)roomsource.Select(data);
            TextBox12.Text = view[0].Row["first_name"].ToString();
            TextBox3.Text = view[0].Row["last_name"].ToString();
            TextBox5.Text = view[0].Row["contact_no"].ToString();
            TextBox13.Text = view[0].Row["email_id"].ToString();
        }

        
    }
}/*room number not null
Cannot insert the value NULL into column 'room_no', table 'University.dbo.room'; column does not allow nulls. INSERT fails.
The statement has been terminated.*/
