<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="University.Registrar_Office.Student_Grade_Form" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Admission Details" />
    <meta name="author" content="Harika" />
    <title>Student Grade</title>
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
                        <li><a href="SectionRegistration.aspx">Section Registration</a></li>
                        <li class="active"><a href="StudentGrade.aspx">Student Grade</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Student Grade Report"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
    <div>
    <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="suser_id,section_id" DataSourceID="GradeTBLDataSource" >
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="suser_id" HeaderText="suser_id" ReadOnly="True" SortExpression="suser_id" />
                <asp:BoundField DataField="section_id" HeaderText="section_id" ReadOnly="True" SortExpression="section_id" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="GradeTBLDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [grade] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))" InsertCommand="INSERT INTO [grade] ([suser_id], [section_id], [grade]) VALUES (@suser_id, @section_id, @grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [suser_id], [section_id], [grade] FROM [grade] WHERE ([section_id] = @section_id)" UpdateCommand="UPDATE [grade] SET [grade] = @grade WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="SectionIDDDL" Name="section_id" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Section ID"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="SectionIDDDL" runat="server" Height="37px" Width="133px" DataSourceID="SectionIDsListDataSource" DataTextField="section_id" DataValueField="section_id" >
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SectionIDsListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [grade]"></asp:SqlDataSource>
        <br />
&nbsp;<asp:SqlDataSource ID="SqlGrade" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [grade] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))" InsertCommand="INSERT INTO [grade] ([suser_id], [section_id], [grade]) VALUES (@suser_id, @section_id, @grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [grade]" UpdateCommand="UPDATE [grade] SET [grade] = @grade WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))">
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
        <asp:Button ID="GradeButton" runat="server" OnClick="GradeButton_Click" Text="Submit" Width="83px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    
        <br />
    
    </div>
    </form>
</body>
</html>
