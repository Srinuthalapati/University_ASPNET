<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SectionRegistration.aspx.cs" Inherits="University.Registrar_Office.Course_Registration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Admission Details" />
    <meta name="author" content="Harika" />
    <title>Section Registration</title>
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
    <form id="form2" runat="server">
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
                        <li ><a href="RegistrarHome.aspx">Registration - Home</a></li>
                        <li ><a href="UniversirtyApplication.aspx">University Application</a></li>
                        <li><a href="AdmissionStatus.aspx">Admission Status</a></li>                        
                        <li><a href="AdmissionDetails.aspx">Admission Details</a></li> 
                        <li><a href="SectionCreation.aspx">Section Creation</a></li> 
                        <li class="active"><a href="SectionRegistration.aspx">Section Registration</a></li>
                        <li><a href="StudentGrade.aspx">Student Grade</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Section Registration"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
    <div>
    <br />
        <br />
        Student ID: <asp:TextBox ID="StudentId" runat="server" Width="196px"></asp:TextBox>
        <br />
&nbsp;<asp:RadioButtonList ID="RegordropRadioButton" runat="server">
            <asp:ListItem Value="0">Register</asp:ListItem>
            <asp:ListItem Value="1">Drop</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        &nbsp;Semester:
        <asp:DropDownList ID="SemDropdown" runat="server" DataSourceID="SqlSem" DataTextField="semester" DataValueField="semester" AutoPostBack="true" OnSelectedIndexChanged="SemDropdown_SelectedIndexChanged">
            
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlSem" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [semester] FROM [section]"></asp:SqlDataSource>
        <br />
        &nbsp;
        <br />
        <br />
        Courses:&nbsp;
        <asp:DropDownList ID="CourseDropdown" runat="server" AutoPostBack="True" DataSourceID="SqlCourse" DataTextField="course_name" DataValueField="course_id">
     
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
        Section ID :&nbsp;
        <asp:DropDownList ID="SectionDropDown" runat="server" DataSourceID="SqlSection" DataValueField="section_id" AutoPostBack="true">
   
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="Sqlsectionregistration" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [section_registration] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND [registration_status] = @original_registration_status AND [registration_date] = @original_registration_date" InsertCommand="INSERT INTO [section_registration] ([suser_id], [section_id], [registration_status], [registration_date]) VALUES (@suser_id, @section_id, @registration_status, @registration_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [section_registration]" UpdateCommand="UPDATE [section_registration] SET [registration_status] = @registration_status, [registration_date] = @registration_date WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND [registration_status] = @original_registration_status AND [registration_date] = @original_registration_date">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="original_registration_date" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="registration_date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="registration_date" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="original_registration_date" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:SqlDataSource ID="SqlCourse" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT distinct (s.course_id),c.course_name FROM section as s,course as c WHERE (s.semester = @semester) and s.course_id = c.course_id">
            <SelectParameters>
                <asp:ControlParameter ControlID="SemDropdown" DefaultValue="Spring2017" Name="semester" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ApplicationButton" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" OnClick="ApplicationButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="40px" Text="Clear Fields" Width="183px" />
        <br />
    </div>
        <asp:SqlDataSource ID="SqlSection" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT distinct (s.section_id) FROM section as s,course as c WHERE (s.course_id = @course_id)  and s.semester = @semester">
            <SelectParameters>
                <asp:ControlParameter ControlID="CourseDropdown" Name="course_id" PropertyName="SelectedValue" Type="Int16"/>
                <asp:ControlParameter ControlID="SemDropdown" Name="semester" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlGrade" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [grade] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))" InsertCommand="INSERT INTO [grade] ([suser_id], [section_id], [grade]) VALUES (@suser_id, @section_id, @grade)" OldValuesParameterFormatString="original_{0}" OnSelecting="SqlGrade_Selecting" SelectCommand="SELECT * FROM [grade]" UpdateCommand="UPDATE [grade] SET [grade] = @grade WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="grade" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlSectionUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [section] WHERE [section_id] = @original_section_id AND (([section_availabilty] = @original_section_availabilty) OR ([section_availabilty] IS NULL AND @original_section_availabilty IS NULL))" InsertCommand="INSERT INTO [section] ([section_id], [section_availabilty]) VALUES (@section_id, @section_availabilty)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [section_id], [section_availabilty] FROM [section]" UpdateCommand="UPDATE [section] SET [section_availabilty] = @section_availabilty WHERE [section_id] = @original_section_id AND (([section_availabilty] = @original_section_availabilty) OR ([section_availabilty] IS NULL AND @original_section_availabilty IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_section_availabilty" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="section_availabilty" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="section_availabilty" Type="Int16" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_section_availabilty" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Status:&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="RegistrationStatusLabel" runat="server" CssClass="highlight"></asp:Label>
        </form>
</body>
</html>
