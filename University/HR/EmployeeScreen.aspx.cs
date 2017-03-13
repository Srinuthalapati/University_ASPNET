using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.HR
{
    public partial class Timesheet : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            PayRollPanel.Visible = false;
            WrknPayPanel.Visible = false;
            
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {


            SqlData.SelectCommand = "select a.euser_id,  a.salaryperhour, a.pay_frequency , b.first_name  from employee a , user_info b where a.euser_id = '" + TextBox1.Text + "' and  b.user_id = a.euser_id";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);


            EmpNameTxtBox.Text = dvView[0].Row["first_name"].ToString();
            PayFqTxtbox.Text = dvView[0].Row["pay_frequency"].ToString();
            Salperhrtxtbox.Text = dvView[0].Row["salaryperhour"].ToString();



            if (PayFqTxtbox.Text.StartsWith("MON") == true)
            {


                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = false;
                MonTimeshtTable.Visible = true;
            }
            else
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = true;
                MonTimeshtTable.Visible = false;
            }



        }



        protected void TimesheetBtn_Click(object sender, EventArgs e)
        {
            PayRollPanel.Visible = false;

            if (PayFqTxtbox.Text.StartsWith("MON") == true)
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = false;
                MonTimeshtTable.Visible = true;
            }
            else
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = true;
                MonTimeshtTable.Visible = false;
            }
        }

        protected void Payrollbtn_Click(object sender, EventArgs e)
        {
            WrknPayPanel.Visible = false;
            PayRollPanel.Visible = true;
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {

            decimal v_grosspay;
            decimal v_deducations;
            decimal v_netpay;

            decimal v_totalHours;



            if (PayFqTxtbox.Text.StartsWith("MON") == true)
            {

                v_totalHours = Convert.ToInt32(week1txtbox.Text) + Convert.ToInt32(week2txtbox.Text) + Convert.ToInt32(week3txtbox.Text) + Convert.ToInt32(week4txtbox.Text);

                montotalhrs.Text = v_totalHours.ToString();
            }
            else
            {

                v_totalHours = Convert.ToInt32(week1txtboxbw.Text) + Convert.ToInt32(weeek2textboxbw.Text);
                totalbwhrs.Text = v_totalHours.ToString();
            }
            SqlTimesheet.InsertParameters["euser_id"].DefaultValue = TextBox1.Text.ToUpper().Trim();
            SqlTimesheet.InsertParameters["total_hours"].DefaultValue = (string)v_totalHours.ToString();
            SqlTimesheet.Insert();

            SqlData.SelectCommand = "Select MAX(timesheet_id) as timesheet_id from timesheet";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);

            string timesheet_id = dvView[0].Row["timesheet_id"].ToString();


            v_grosspay = v_totalHours * Convert.ToDecimal(Salperhrtxtbox.Text);
            v_deducations = v_grosspay - (v_grosspay * 85 / 100);
            v_netpay = v_grosspay - v_deducations;

            SqlDataPayroll.InsertParameters["euser_id"].DefaultValue = TextBox1.Text.ToUpper().Trim();
            SqlDataPayroll.InsertParameters["timesheet_id"].DefaultValue = (string)timesheet_id;
            SqlDataPayroll.InsertParameters["base_pay"].DefaultValue = v_grosspay.ToString();
            SqlDataPayroll.InsertParameters["total_deduction"].DefaultValue = v_deducations.ToString();
            SqlDataPayroll.InsertParameters["net_pay"].DefaultValue = v_netpay.ToString();
            SqlDataPayroll.Insert();

            grosspaylabel.Text = v_grosspay.ToString();
            deducationsLabel.Text = v_deducations.ToString();
            netpaylabel.Text = v_netpay.ToString();

        }
    }
}