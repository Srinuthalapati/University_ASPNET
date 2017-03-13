using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace University.Registrar_Office
{
    public partial class Applicant_Admission_details_update_form : System.Web.UI.Page
    {
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlApplication.SelectCommand = "Select * from student_application where suser_id= '" + txtUserID.Text + "'";
            DataSourceSelectArguments dsArgs = new DataSourceSelectArguments();
            DataView dsView = new DataView();
            dsView = (DataView)SqlApplication.Select(dsArgs);
            String status = dsView[0].Row["admission_status"].ToString();
            AppStatusLabel.Text = status;
            GridView1.Visible = true;
        }
    }
}