using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace University.FinancialAid
{
    public partial class Application_Status_FA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            String url = Request.Url.AbsoluteUri;

            string[] arr = url.Split('=');


            SqlDataSource1.SelectCommand = "select * from financial_aid_application where suser_id ='" + arr[1] + "'";
            SqlDataSource1.DataBind();
            GridView1.DataBind();



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;





            SqlConnection con2 = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");

            string val1 = "update financial_aid_application set status = 'Denied' where fapplication_id = " + row.Cells[1].Text;

            SqlCommand submit4 = new SqlCommand(val1, con2);

            con2.Open();
            submit4.ExecuteNonQuery();
            con2.Close();

        }
    }
}