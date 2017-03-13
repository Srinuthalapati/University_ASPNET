using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace University.Financial_Aid
{
    public partial class Application_Review_FA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = Request.Url.AbsoluteUri;

            string[] arr = url.Split('=');

            TextBox1.Text = arr[1];

            SqlConnection con1 = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");
            DataTable dt = new DataTable();
            con1.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand1 = new SqlCommand("select * from student_background where fapplication_id ='" + TextBox1.Text + "'", con1);

            myReader = myCommand1.ExecuteReader();

            while (myReader.Read())
            {
                TextBox2.Text = (myReader["suser_id"].ToString());
                TextBox9.Text = (myReader["marital_status"].ToString());
                TextBox10.Text = (myReader["crime_info"].ToString());
                TextBox11.Text = (myReader["work_permit"].ToString());
                TextBox12.Text = (myReader["residence"].ToString());
                TextBox13.Text = (myReader["parents_employment"].ToString());
                TextBox14.Text = (myReader["cash_earnings"].ToString());
                TextBox15.Text = (myReader["untaxed_income"].ToString());
                TextBox16.Text = (myReader["application_date"].ToString());
                

            }
            myReader.Close(); 

            SqlCommand myCommand2 = new SqlCommand("select * from student where suser_id ='" + TextBox2.Text + "'", con1);

            myReader = myCommand2.ExecuteReader();

            while (myReader.Read())
            {
                TextBox4.Text = (myReader["major"].ToString());
                TextBox5.Text = (myReader["graduation_semester"].ToString());
                TextBox6.Text = (myReader["student_year"].ToString());
                TextBox7.Text = (myReader["gpa"].ToString());
                TextBox8.Text = (myReader["credits_completed"].ToString());
                
         


            }
            myReader.Close();


            SqlCommand myCommand3 = new SqlCommand("select first_name, last_name from user_info where user_id ='" + TextBox2.Text + "'", con1);

            myReader = myCommand3.ExecuteReader();

            while (myReader.Read())
            {
                TextBox3.Text = (myReader["first_name"].ToString()+" "+ myReader["last_name"].ToString());
             

            }
            myReader.Close();



            con1.Close();

            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");

            string val1 = "update financial_aid_application set euser_id=" + TextBox17.Text + "," + "validity_date = '" + TextBox18.Text + "'," + "status = 'Approved' where fapplication_id = " +TextBox1.Text ;

            SqlCommand submit4 = new SqlCommand(val1, con2);

    con2.Open();        
    submit4.ExecuteNonQuery();
    con2.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");

            string val1 = "update financial_aid_application set euser_id=" + TextBox17.Text + "," + "validity_date = '" + TextBox18.Text + "'," + "status = 'Rejected' where fapplication_id = " + TextBox1.Text;

            SqlCommand submit4 = new SqlCommand(val1, con2);

            con2.Open();
            submit4.ExecuteNonQuery();
            con2.Close();
        }
    }
}