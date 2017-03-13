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
    public partial class FinancialAid_Application_FA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = Request.Url.AbsoluteUri;

            string[] arra = url.Split('=');

           if(arra.Length==2)
            {
                string[] arrb = arra[1].Split('&');

                TextBox1.Text = arrb[0];
                TextBox2.Text = arrb[1];
                TextBox8.Text = arrb[2];
                TextBox9.Text = arrb[3];
                TextBox3.Text = arrb[4];
                TextBox4.Text = arrb[5];

            }

        }

        static SqlDataReader dr;

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection appform = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");
            
            string val1 = "insert into financial_aid_application (suser_id , faward_code, status ) values ('" + TextBox1.Text + "','" + DropDownList3.SelectedValue + "','Open')";

            SqlCommand submit1 = new SqlCommand(val1, appform);

            string val2 = "select max(fapplication_id)  from financial_aid_application";

            SqlCommand submit2 = new SqlCommand(val2, appform);
            appform.Open();

            submit1.ExecuteNonQuery();
            dr = submit2.ExecuteReader();
            dr.Read();
            int num = Convert.ToInt32(dr[0]) ;
            appform.Close();

            appform.Open();

            String val3 = "insert into student_background (suser_id, fapplication_id, marital_status, crime_info, work_permit, residence, parents_employment, cash_earnings, untaxed_income, application_date) values ("+TextBox1.Text +" , "+ num + ",'" + RadioButtonList1.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + RadioButtonList5.SelectedValue + "','"+ TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            SqlCommand submit3 = new SqlCommand(val3, appform);
            submit3.ExecuteNonQuery();

            appform.Close();

            TextBox2.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
           /* RadioButtonList1.Text = string.Empty;
            RadioButtonList2.Text = string.Empty;
            RadioButtonList3.Text = string.Empty;
            RadioButtonList4.Text = string.Empty;
            RadioButtonList5.Text = string.Empty;*/
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;












        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection("Data Source=mis5370.database.windows.net;Initial Catalog=University;User ID=mis5370group1;Password=ElephantFoots$47");
            DataTable dt = new DataTable();
            con1.Open();
            SqlDataReader myReader = null;

            SqlCommand myCommand1 = new SqlCommand("select * from student where suser_id =" + TextBox1.Text, con1);
            String val = "select * from student_background where suser_id =" + TextBox1.Text + "";
            myReader = myCommand1.ExecuteReader();

            int num = 1;

            while (myReader.Read())
            {

                num = num + 1;

              Response.Redirect("~/FinancialAid/FinancialAid_Application_FA.aspx?rowID="+ myReader["suser_id"].ToString()+"&"+ myReader["major"].ToString()+"&"+ myReader["graduation_semester"].ToString().Trim()+"&"+ myReader["student_year"].ToString().Trim()+"&"+ myReader["gpa"].ToString()+"&"+ myReader["credits_completed"].ToString());





            }
            myReader.Close();
            con1.Close();
        }
    }
}