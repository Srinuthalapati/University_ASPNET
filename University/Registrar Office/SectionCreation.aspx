<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SectionCreation.aspx.cs" Inherits="University.Registrar_Office.Section_Creation" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Admission Details" />
    <meta name="author" content="Harika" />
    <title>Section Creation</title>
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
                        <li class="active"><a href="SectionCreation.aspx">Section Creation</a></li> 
                        <li><a href="SectionRegistration.aspx">Section Registration</a></li>
                        <li><a href="StudentGrade.aspx">Student Grade</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>

    
    <div>
         
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Section Creation Form"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
        
        <asp:Label runat="server" id="msg" CssClass="highlight"></asp:Label>
        <br />
        <asp:Label ID="lblCourse" runat="server" Text="Course Name:"></asp:Label>
        <asp:DropDownList ID="selCourse" runat="server" AutoPostBack="true" DataSourceID="SqlCourse" DataTextField="course_name" DataValueField="course_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlCourse" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [course_id], [course_name], [Effective_start_date], [course_description], [department_id], [course_level], [program_id] FROM [course]"></asp:SqlDataSource>
         <p>
            <asp:Label ID="lblFaculty5" runat="server" Text="Faculty ID:"></asp:Label>
        <asp:DropDownList ID="selFaculty" runat="server" DataSourceID="SqlFaculty" DataTextField="Faculty_Name" DataValueField="fuser_id">
        </asp:DropDownList>
         </p>
        <p>
            &nbsp;<asp:Label ID="lblFaculty1" runat="server" Text="Section Id:"></asp:Label>
            <asp:TextBox ID="SectionIDTxt" runat="server" ></asp:TextBox>
            </p>
         <p>
            <asp:Label ID="lblFaculty2" runat="server" Text="Section Availability:"></asp:Label>
            <asp:TextBox ID="SectionAvailabilityTxt" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="lblFaculty3" runat="server" Text="Credits:"></asp:Label>
            <asp:TextBox ID="CreditsTxt" runat="server"></asp:TextBox>
            </p>
         <p>
            <asp:Label ID="lblFaculty4" runat="server" Text="Semester: "></asp:Label>
            <asp:TextBox ID="SemesterTxt" runat="server"></asp:TextBox>
            </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 200px">
            <asp:Button ID="SectionSubmitButton" runat="server" Text="Submit" OnClick="SectionSubmitButton_Click" />
            <asp:Button ID="SectionClearButton" runat="server" Text="Clear" OnClick="SectionClearButton_Click" />
        </p>
    
    
    </div>
        <asp:SqlDataSource ID="SqlSection" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [section] WHERE [section_id] = @original_section_id AND [course_id] = @original_course_id AND [fuser_id] = @original_fuser_id AND [section_availabilty] = @original_section_availabilty AND [semester] = @original_semester AND [credits] = @original_credits" InsertCommand="INSERT INTO [section] ([section_id], [course_id], [fuser_id], [section_availabilty], [semester], [credits]) VALUES (@section_id, @course_id, @fuser_id, @section_availabilty, @semester, @credits)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [section]" UpdateCommand="UPDATE [section] SET [course_id] = @course_id, [fuser_id] = @fuser_id, [section_availabilty] = @section_availabilty, [semester] = @semester, [credits] = @credits WHERE [section_id] = @original_section_id AND [course_id] = @original_course_id AND [fuser_id] = @original_fuser_id AND [section_availabilty] = @original_section_availabilty AND [semester] = @original_semester AND [credits] = @original_credits">
            <DeleteParameters>
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_course_id" Type="Int16" />
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_section_availabilty" Type="String" />
                <asp:Parameter Name="original_semester" Type="String" />
                <asp:Parameter Name="original_credits" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="course_id" Type="Int16" />
                <asp:Parameter Name="fuser_id" Type="Int32" />
                <asp:Parameter Name="section_availabilty" Type="String" />
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="credits" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="course_id" Type="Int16" />
                <asp:Parameter Name="fuser_id" Type="Int32" />
                <asp:Parameter Name="section_availabilty" Type="String" />
                <asp:Parameter Name="semester" Type="String" />
                <asp:Parameter Name="credits" Type="Int16" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_course_id" Type="Int16" />
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_section_availabilty" Type="String" />
                <asp:Parameter Name="original_semester" Type="String" />
                <asp:Parameter Name="original_credits" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlFaculty" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT info.first_name as 'Faculty_Name',fc.fuser_id FROM faculty_course as fc,user_info as info WHERE (fc.course_id = @course_id) and fc.fuser_id = info.user_id
">
            <SelectParameters>
                <asp:ControlParameter ControlID="selCourse" Name="course_id" PropertyName="SelectedValue" Type="Int16" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
