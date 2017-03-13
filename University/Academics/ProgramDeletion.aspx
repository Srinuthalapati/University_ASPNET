<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramDeletion.aspx.cs" Inherits="University.Academics.ProgramDeletion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Update Program</title>
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
    <form id="ProgramDeletionForm" runat="server">
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
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Program Updation/Deletion Form"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label> 
        <br />
        </div>          

                <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
          <br />
                  <br />
        <br />
        <div>        
            <p>
                <b>Don't Update or Delete the Values in the Grid View, if there is data dependency!</b>
            </p>
        </div>
        <br />
        <br />
      </div>
        <asp:GridView ID="ProgramGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="program_id" DataSourceID="ProgramDataSource" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="program_id" HeaderText="Program ID" ReadOnly="True" SortExpression="program_id" />
                <asp:BoundField DataField="program_name" HeaderText="Program Name" SortExpression="program_name" />
                <asp:BoundField DataField="department_id" HeaderText="Department ID" SortExpression="department_id" />
                <asp:BoundField DataField="course_level" HeaderText="Course Level" SortExpression="course_level" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="ProgramDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [program] WHERE [program_id] = @original_program_id AND [program_name] = @original_program_name AND [department_id] = @original_department_id AND [course_level] = @original_course_level" InsertCommand="INSERT INTO [program] ([program_id], [program_name], [department_id], [course_level]) VALUES (@program_id, @program_name, @department_id, @course_level)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [program]" UpdateCommand="UPDATE [program] SET [program_name] = @program_name, [department_id] = @department_id, [course_level] = @course_level WHERE [program_id] = @original_program_id AND [program_name] = @original_program_name AND [department_id] = @original_department_id AND [course_level] = @original_course_level">
            <DeleteParameters>
                <asp:Parameter Name="original_program_id" Type="Int16" />
                <asp:Parameter Name="original_program_name" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="program_id" Type="Int16" />
                <asp:Parameter Name="program_name" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="program_name" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
                <asp:Parameter Name="original_program_id" Type="Int16" />
                <asp:Parameter Name="original_program_name" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
