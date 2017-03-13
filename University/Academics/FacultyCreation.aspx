<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyCreation.aspx.cs" Inherits="University.Academics.FacultyCreation" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Faculty</title>
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
    <form id="FacultyCreationForm" runat="server">
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
                    <a class="navbar-brand" href="../Default.aspx">University - Home</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="AcademicsHome.aspx">Academics - Home</a></li>
                        <li><a href="DepartmentManagement.aspx">Manage Department</a></li>
                        <li><a href="ProgramManagement.aspx">Manage Program</a></li>                        
                        <li><a href="CourseManagement.aspx">Manage Course</a></li>                     
                        <li><a href="AssignFacultyToCourse1.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
         <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Form to create a Faculty under a Department"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label> 
        <br />
        </div>
        
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
        <br />
        <asp:SqlDataSource ID="FacultyTBLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [faculty]"></asp:SqlDataSource>
        <hr />
        <br />
    
        <asp:Label ID="DeptIDLbl" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptIDDDL" runat="server" DataSourceID="DeptIDs_DataSource" DataTextField="department_name" DataValueField="department_id" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="DeptIDDDL_SelectedIndexChanged" Width="254px">
        </asp:DropDownList>
        &nbsp;Department ID:<asp:TextBox ID="DepartmentIDTB" runat="server" Height="21px" Width="98px" Enabled="False"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="DeptIDs_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_id], [department_name] FROM [department] WHERE ([department_id] not in (10,11,12,13,19,20,21,22,24))"></asp:SqlDataSource>
        <br />
    
        <asp:Label ID="FacultyIDLbl" runat="server" Text="Faculty Name:"></asp:Label>
        <asp:DropDownList ID="FacultyIDDDL" runat="server" DataSourceID="FacultyIDListEMPLOYEE" DataTextField="Name" DataValueField="Faculty_ID" AutoPostBack="True" OnSelectedIndexChanged="FacultyIDDDL_SelectedIndexChanged" Height="24px" Width="261px" >
        </asp:DropDownList>
        &nbsp;Faculty ID:
        <asp:TextBox ID="FacultyIDTB" runat="server" Enabled="False" Width="125px"></asp:TextBox>
&nbsp;<br />
        <asp:SqlDataSource ID="FacultyIDListEMPLOYEE" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT (info.user_id) as Faculty_ID, (info.first_name+','+info.last_name) as Name FROM [employee] as emp, [user_info] as info WHERE info.user_id = emp.euser_id and (emp.employee_type = @employee_type) AND (emp.employement_status = @employement_status) and emp.euser_id not in (Select fuser_id from faculty)">
            <SelectParameters>
                <asp:Parameter DefaultValue="TEACHING" Name="employee_type" Type="String" />
                <asp:Parameter DefaultValue="ACTIVE" Name="employement_status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="FacultySpecializationLbl" runat="server" Text="Specialization:"></asp:Label>
        <asp:TextBox ID="FacultySpecializationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="FacultyEducationLbl" runat="server" Text="Education:"></asp:Label>
        <asp:TextBox ID="FacultyEducationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="ContractHoursLbl" runat="server" Text="Contract (Total Eligible Credits Dealt Per Year):"></asp:Label>
        <asp:TextBox ID="ContractHoursTB" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="FacultyCreateSubmitButton" runat="server" Text="Submit" OnClick="FacultyCreateSubmitButton_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="FacultyCreateClearButton" runat="server" Text="Clear" OnClick="FacultyCreateClearButton_Click" />
        </p>
            
        <asp:SqlDataSource ID="FacultyInsertDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [faculty] WHERE [fuser_id] = @original_fuser_id AND [specalization] = @original_specalization AND [education] = @original_education AND [contract] = @original_contract AND [department_id] = @original_department_id" InsertCommand="INSERT INTO [faculty] ([fuser_id], [specalization], [education], [contract], [department_id]) VALUES (@fuser_id, @specalization, @education, @contract, @department_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [faculty]" UpdateCommand="UPDATE [faculty] SET [specalization] = @specalization, [education] = @education, [contract] = @contract, [department_id] = @department_id WHERE [fuser_id] = @original_fuser_id AND [specalization] = @original_specalization AND [education] = @original_education AND [contract] = @original_contract AND [department_id] = @original_department_id">
            <DeleteParameters>
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_specalization" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_contract" Type="Int16" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fuser_id" Type="Int32" />
                <asp:Parameter Name="specalization" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="contract" Type="Int16" />
                <asp:Parameter Name="department_id" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="specalization" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="contract" Type="Int16" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_specalization" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_contract" Type="Int16" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
            
        <hr />
    
            
        <asp:GridView ID="FacultyTBLGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="fuser_id" DataSourceID="FacultyTBLDataSource" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="fuser_id" HeaderText="Faculty ID" ReadOnly="True" SortExpression="fuser_id" />
                <asp:BoundField DataField="specalization" HeaderText="Specalization" SortExpression="specalization" />
                <asp:BoundField DataField="education" HeaderText="Education" SortExpression="education" />
                <asp:BoundField DataField="contract" HeaderText="Contract - Credit Hours" SortExpression="contract" />
                <asp:BoundField DataField="department_id" HeaderText="Department ID" SortExpression="department_id" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    
            
    </form>
</body>
</html>
