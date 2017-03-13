<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeScreen.aspx.cs" Inherits="University.HR.Timesheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Update Timesheet" />
    <meta name="author" content="Harika" />
    <title>Employee Portal</title>
    <%-- ------ css ------ --%>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link href="../css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../images/favicon.ico" />
</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
    <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../Default.aspx">University</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="HRDefault.aspx">HR - Home</a></li>
                        <li><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplicationStatus.aspx">Job Application Status</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li class="active"><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li                     
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Employee Portal"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
       <div style="margin-left: 100px">
        <asp:Panel ID="EmpSearchPanel" runat="server">
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="EmpIDTxtBox" runat="server" Text="Employee ID: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SearchBtn" runat="server" OnClick="SearchBtn_Click" Text="Search " />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="empnamelabel" runat="server" Text="Employee Name: "></asp:Label>
            <asp:TextBox ID="EmpNameTxtBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary/Hour:
            <asp:TextBox ID="Salperhrtxtbox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pay Frequency: &nbsp;&nbsp;<asp:TextBox ID="PayFqTxtbox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString2 %>" SelectCommand="SELECT * FROM [user_info]"></asp:SqlDataSource>
            
            <br />
            <br />
        </asp:Panel>
            <asp:Button ID="TimesheetBtn" runat="server" Text="Timesheet" Width="151px" OnClick="TimesheetBtn_Click"/>
               
            <asp:Button ID="Payrollbtn" runat="server" Text="Payroll" Width="166px" OnClick="Payrollbtn_Click" />
        <br />
            <asp:Panel ID="WrknPayPanel" runat="server">
                <br />
               
                &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:Table ID="MonTimeshtTable" runat="server" Width="384px">
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="Date" runat="server" BorderColor="#0066FF">Week</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#0066FF">Number of Hours</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 1</asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="week1txtbox" runat="server"></asp:TextBox>
</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 2</asp:TableCell>
                        
                            <asp:TableCell runat="server"><asp:TextBox ID="week2txtbox" runat="server"></asp:TextBox>
</asp:TableCell>
                      
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 3</asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="week3txtbox" runat="server"></asp:TextBox>
</asp:TableCell>
                        

                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 4</asp:TableCell>
                        <asp:TableCell runat="server"><asp:TextBox ID="week4txtbox" runat="server"></asp:TextBox>
</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Total Hours</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:Label ID="montotalhrs" runat="server" Text=""></asp:Label>
                        
</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
               
                <asp:Table ID="BiwktimeshtTable" runat="server" Width="390px">
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="TableCell1" runat="server" BorderColor="#0066FF">Week</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#0066FF">Number of Hours</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 1</asp:TableCell>

                        
                        <asp:TableCell runat="server"> <asp:TextBox ID="week1txtboxbw" runat="server"></asp:TextBox>
</asp:TableCell>

                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 2</asp:TableCell>

                        <asp:TableCell runat="server">
                            <asp:TextBox ID="weeek2textboxbw" runat="server"></asp:TextBox>
                            
</asp:TableCell>

                    </asp:TableRow>
                    
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Total Hours</asp:TableCell>
                        <asp:TableCell runat="server">
                        <asp:Label ID="totalbwhrs" runat="server" Text=""></asp:Label>        
</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
               
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Submitbtn_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Clearbtn" runat="server" Text="Clear" Width="62px" />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="PayRollPanel" runat="server">
                Payroll :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="payrolllabel" runat="server" Text=""></asp:Label>
                <br />
                <br />
                Gross Pay :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="grosspaylabel" runat="server" Text=""></asp:Label>
                
                <br />
                <br />
                Deducations:&nbsp;&nbsp;
                <asp:Label ID="deducationsLabel" runat="server" Text=""></asp:Label>
                
                <br />
                <br />
                Net pay :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="netpaylabel" runat="server" Text=""></asp:Label>
                
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </asp:Panel>
            <asp:SqlDataSource ID="SqlTimesheet" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [timesheet] WHERE [timesheet_id] = @original_timesheet_id AND [euser_id] = @original_euser_id AND [total_hours] = @original_total_hours" InsertCommand="INSERT INTO [timesheet] ([euser_id], [total_hours]) VALUES (@euser_id, @total_hours)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [timesheet]" UpdateCommand="UPDATE [timesheet] SET [euser_id] = @euser_id, [total_hours] = @total_hours WHERE [timesheet_id] = @original_timesheet_id AND [euser_id] = @original_euser_id AND [total_hours] = @original_total_hours">
                <DeleteParameters>
                    <asp:Parameter Name="original_timesheet_id" Type="Int16" />
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_total_hours" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="euser_id" Type="Int32" />
                    <asp:Parameter Name="total_hours" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="euser_id" Type="Int32" />
                    <asp:Parameter Name="total_hours" Type="Decimal" />
                    <asp:Parameter Name="original_timesheet_id" Type="Int16" />
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_total_hours" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataPayroll" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [payroll] WHERE [payroll_id] = @original_payroll_id AND [euser_id] = @original_euser_id AND [timesheet_id] = @original_timesheet_id AND [base_pay] = @original_base_pay AND [total_deduction] = @original_total_deduction AND [net_pay] = @original_net_pay" InsertCommand="INSERT INTO [payroll] ([euser_id], [timesheet_id], [base_pay], [total_deduction], [net_pay]) VALUES (@euser_id, @timesheet_id, @base_pay, @total_deduction, @net_pay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [payroll]" UpdateCommand="UPDATE [payroll] SET [euser_id] = @euser_id, [timesheet_id] = @timesheet_id, [base_pay] = @base_pay, [total_deduction] = @total_deduction, [net_pay] = @net_pay WHERE [payroll_id] = @original_payroll_id AND [euser_id] = @original_euser_id AND [timesheet_id] = @original_timesheet_id AND [base_pay] = @original_base_pay AND [total_deduction] = @original_total_deduction AND [net_pay] = @original_net_pay">
                <DeleteParameters>
                    <asp:Parameter Name="original_payroll_id" Type="Int32" />
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_timesheet_id" Type="Int16" />
                    <asp:Parameter Name="original_base_pay" Type="Decimal" />
                    <asp:Parameter Name="original_total_deduction" Type="Decimal" />
                    <asp:Parameter Name="original_net_pay" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="euser_id" Type="Int32" />
                    <asp:Parameter Name="timesheet_id" Type="Int16" />
                    <asp:Parameter Name="base_pay" Type="Decimal" />
                    <asp:Parameter Name="total_deduction" Type="Decimal" />
                    <asp:Parameter Name="net_pay" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="euser_id" Type="Int32" />
                    <asp:Parameter Name="timesheet_id" Type="Int16" />
                    <asp:Parameter Name="base_pay" Type="Decimal" />
                    <asp:Parameter Name="total_deduction" Type="Decimal" />
                    <asp:Parameter Name="net_pay" Type="Decimal" />
                    <asp:Parameter Name="original_payroll_id" Type="Int32" />
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_timesheet_id" Type="Int16" />
                    <asp:Parameter Name="original_base_pay" Type="Decimal" />
                    <asp:Parameter Name="original_total_deduction" Type="Decimal" />
                    <asp:Parameter Name="original_net_pay" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

           
            <br />
            </div>
    </form>
    
</body>
</html>
