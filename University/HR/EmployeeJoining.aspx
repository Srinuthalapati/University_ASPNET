<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeJoining.aspx.cs" Inherits="University.HR.EmployeeJoining" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Employee Joining" />
    <meta name="author" content="Harika" />
    <title>Employee Joining Formalities</title>
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
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                   
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Employee Joining"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label> 
        <br />
        </div>
        <div style="margin-left: 100px">

         
         <asp:Label ID="lblEmployeeId" Width="150" runat="server" Text="Employee ID :"></asp:Label> 
         <asp:TextBox ID="txtuserID" Width="150" runat="server"  OnTextChanged="txtuserID_TextChanged" AutoPostBack="True"></asp:TextBox><br /><br />
         <asp:Label ID="lblFirstName" runat="server" Width="150" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" Width="150" runat="server" ReadOnly="true"></asp:TextBox>            
        <asp:Label ID="lblLastName" Width="81px" runat="server" Text="Last Name" style="margin-left: 55px"></asp:Label>
        <asp:TextBox ID="txtLastName" Width="150" runat="server" ReadOnly="true"></asp:TextBox>
        <br /> 
            <br />
        <asp:Label ID="lblDOB" runat="server" Width="150" Text="Date of Birth"></asp:Label> 

        <asp:TextBox ID="txtDob" ReadOnly="true" Width="150" runat="server" ></asp:TextBox>
         <br />
            <br />
      <asp:Label ID="lblEmail" runat="server" Width="150" Text="Email Id :"></asp:Label>                 
      <asp:TextBox ID="txtEmail" runat="server" Width="208px" ReadOnly="true"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="lblContactNo" Width="150" runat="server" Text="Contact No:"></asp:Label>
            <asp:TextBox ID="txtContactno" runat="server" Width="150" ReadOnly="true"></asp:TextBox>
            <br />
            <br />
         <asp:Label ID="lblAddressLine" Width="150" runat="server" Text="Address Line:"></asp:Label>
         <asp:TextBox ID="txtAddressLine" runat="server" Width="500" Height="50px" ReadOnly="true"></asp:TextBox>
            <br />
            '<br />
            <asp:Label ID="lblPositionId" Width="150" runat="server" Text="Position ID :"></asp:Label>         
         <asp:TextBox ID="txtPositionId" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox>        
        <br /><br />
            <asp:Label ID="lblJobtype" Width="150" runat="server" Text="Job Type :"></asp:Label>         
         <asp:TextBox ID="txtJobtype" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblDesignation" Width="150" runat="server" Text="Designation :"></asp:Label> 
         <asp:TextBox ID="txtDesignation" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox><br /><br />
         <asp:Label ID="lbldepartment" runat="server" Text="Department :" Width="150"></asp:Label>
         <asp:TextBox ID="txtDepartment" runat="server" Width="150" ReadOnly="true"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblPayfrequency" runat="server" Width="150" Text="Pay Frequency :"></asp:Label>
        <asp:TextBox ID="txtPayFrequency" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br /> 
        <asp:Label ID="lblSalary" runat="server" Width="150" Text="Salary Per Hour :"></asp:Label>
        <asp:TextBox ID="txtSalaryperhour" runat="server" Width="150" ></asp:TextBox><br /><br />
        <asp:Label ID="lblempType" runat="server" Width="150" Text="Employee Type :"></asp:Label>
        <asp:TextBox ID="txtempType" runat="server" Width="150" ></asp:TextBox><br /><br /> 
  
                 
            <asp:SqlDataSource ID="SqlEmployee" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [employee] WHERE [euser_id] = @original_euser_id AND [employement_status] = @original_employement_status AND [date_of_joining] = @original_date_of_joining AND [position_id] = @original_position_id AND [employee_type] = @original_employee_type AND (([salaryperhour] = @original_salaryperhour) OR ([salaryperhour] IS NULL AND @original_salaryperhour IS NULL)) AND (([pay_frequency] = @original_pay_frequency) OR ([pay_frequency] IS NULL AND @original_pay_frequency IS NULL))" InsertCommand="INSERT INTO [employee] ([euser_id], [employement_status], [date_of_joining], [position_id], [employee_type], [salaryperhour], [pay_frequency]) VALUES (@euser_id, @employement_status, @date_of_joining, @position_id, @employee_type, @salaryperhour, @pay_frequency)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [employement_status] = @employement_status, [date_of_joining] = @date_of_joining, [position_id] = @position_id, [employee_type] = @employee_type, [salaryperhour] = @salaryperhour, [pay_frequency] = @pay_frequency WHERE [euser_id] = @original_euser_id AND [employement_status] = @original_employement_status AND [date_of_joining] = @original_date_of_joining AND [position_id] = @original_position_id AND [employee_type] = @original_employee_type AND (([salaryperhour] = @original_salaryperhour) OR ([salaryperhour] IS NULL AND @original_salaryperhour IS NULL)) AND (([pay_frequency] = @original_pay_frequency) OR ([pay_frequency] IS NULL AND @original_pay_frequency IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_employement_status" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_date_of_joining" />
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_employee_type" Type="String" />
                    <asp:Parameter Name="original_salaryperhour" Type="Decimal" />
                    <asp:Parameter Name="original_pay_frequency" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="euser_id" Type="Int32" />
                    <asp:Parameter Name="employement_status" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_joining" />
                    <asp:Parameter Name="position_id" Type="Int16" />
                    <asp:Parameter Name="employee_type" Type="String" />
                    <asp:Parameter Name="salaryperhour" Type="Decimal" />
                    <asp:Parameter Name="pay_frequency" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="employement_status" Type="String" />
                    <asp:Parameter DbType="Date" Name="date_of_joining" />
                    <asp:Parameter Name="position_id" Type="Int16" />
                    <asp:Parameter Name="employee_type" Type="String" />
                    <asp:Parameter Name="salaryperhour" Type="Decimal" />
                    <asp:Parameter Name="pay_frequency" Type="String" />
                    <asp:Parameter Name="original_euser_id" Type="Int32" />
                    <asp:Parameter Name="original_employement_status" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_date_of_joining" />
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_employee_type" Type="String" />
                    <asp:Parameter Name="original_salaryperhour" Type="Decimal" />
                    <asp:Parameter Name="original_pay_frequency" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
                 
            <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>"  SelectCommand="SELECT * FROM [position]">
            </asp:SqlDataSource>
            </div>

         <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnclear" runat="server"  Text="Clear" OnClick="btnclear_Click" />
            <br />
        </div>
    </form>
</body>
</html>
