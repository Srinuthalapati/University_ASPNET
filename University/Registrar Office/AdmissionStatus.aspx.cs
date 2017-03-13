using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class Student_Admitted_or_rejected_form : System.Web.UI.Page
    {
        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            if (RadioButtonList1.SelectedValue == "Admitted")
            {
                SqlAdmission.SelectCommand = "select suser_id,major from student_application where application_id ='" + DropDownList3.SelectedValue + "'";
                DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
                DataView dvView = new DataView();
                dvView = (DataView)SqlAdmission.Select(dsArguments);


                SqlDataSource1.InsertParameters["suser_id"].DefaultValue = dvView[0].Row["suser_id"].ToString();
                SqlDataSource1.InsertParameters["major"].DefaultValue = dvView[0].Row["major"].ToString();
                SqlDataSource1.Insert();

            }
                SqlAdmission.UpdateParameters["admission_status"].DefaultValue = RadioButtonList1.SelectedValue;
                SqlAdmission.UpdateParameters["original_application_id"].DefaultValue = DropDownList3.SelectedValue;
                SqlAdmission.Update();
                msg.Text = "Admission Status updated Successfully";

            GridView1.Visible = true;
        }
    }
}