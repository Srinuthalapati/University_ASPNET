<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyLoadReport.aspx.cs" Inherits="University.Academics.FacultyLoadReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>FacultyLoad</title>
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

    <form id="FacultyLoadReport" runat="server">
    
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
                        <li><a href="DepartmentCreation.aspx">Create Department</a></li>
                        <li><a href="ProgramCreation.aspx">Create Program</a></li>                        
                        <li><a href="CourseCreation.aspx">Create Course</a></li>                  
                        <li><a href="AssignFacultyToCourse1.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
         <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Faculty Load Report"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label> 
        <br />
        </div>

            
        <asp:Label ID="DeptIDLbl" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptIDDDL" runat="server" DataSourceID="DeptIDs_DataSource" DataTextField="department_name" DataValueField="department_id" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="DeptIDDDL_SelectedIndexChanged" Width="199px">
        </asp:DropDownList>
        &nbsp;Department ID:<asp:TextBox ID="DepartmentIDTB" runat="server" Height="24px" Width="85px" Enabled="False"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="DeptIDs_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_id], [department_name] FROM [department] WHERE ([department_id] not in (10,11,12,13,19,20,21,22,24))"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
    
        <asp:Label ID="FacultyNameLbl" runat="server" Text="Faculty Name:"></asp:Label>
        <asp:DropDownList ID="FacultyIDDDL" runat="server" DataSourceID="FacultyIDs_DeptID_DataSource" DataTextField="Name" DataValueField="Faculty_ID" AutoPostBack="True" Height="25px" OnSelectedIndexChanged="FacultyIDDDL_SelectedIndexChanged" Width="255px">
        </asp:DropDownList>
            
        &nbsp;<asp:Label ID="FacultyIDLbl" runat="server" Text="Faculty ID: "></asp:Label>
        <asp:TextBox ID="FacultyIDTB" runat="server" Height="24px" Width="85px" Enabled="False"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="FacultyIDs_DeptID_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT (info.user_id) as Faculty_ID, (info.first_name+','+info.last_name) as Name FROM [faculty] as fac, [user_info] as info WHERE info.user_id = fac.fuser_id and (fac.department_id= @department_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DeptIDDDL" DefaultValue="" Name="department_id" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
            
        <br />
            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="FacultyLoadGridView" runat="server" DataSourceID="FacultyReportDataSource" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="section_id" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" PageSize="5" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Faculty_Name" HeaderText="Faculty Name" SortExpression="Faculty_Name" />
                <asp:BoundField DataField="Faculty_ID" HeaderText="Faculty ID" SortExpression="Faculty_ID" />
                <asp:BoundField DataField="course_name" HeaderText="Course Name" SortExpression="course_name" />
                <asp:BoundField DataField="section_id" HeaderText="Section ID" ReadOnly="True" SortExpression="section_id" />
                <asp:BoundField DataField="credits" HeaderText="Credits" SortExpression="credits" />
                <asp:BoundField DataField="semester" HeaderText="Semester" SortExpression="semester" />
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
        <asp:SqlDataSource ID="FacultyReportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="select info.first_name as 'Faculty_Name', sec.fuser_id as 'Faculty_ID', crs.course_name, sec.section_id, sec.credits, sec.semester from section as sec, user_info as info, course as crs where sec.fuser_id = @fuser_id and sec.fuser_id = info.user_id and sec.course_id = crs.course_id">
            <SelectParameters>
                <asp:ControlParameter ControlID="FacultyIDDDL" DefaultValue="" Name="fuser_id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
            
        <br />
        </form>
</body>
</html>
