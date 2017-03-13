<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionStatus.aspx.cs" Inherits="University.Registrar_Office.Student_Admitted_or_rejected_form" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Admission Details" />
    <meta name="author" content="Harika" />
    <title>Admission satus</title>
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
                        <li class="ative"><a href="AdmissionStatus.aspx">Admission Status</a></li>                        
                        <li ><a href="AdmissionDetails.aspx">Admission Details</a></li> 
                        <li><a href="SectionCreation.aspx">Section Creation</a></li> 
                        <li><a href="SectionRegistration.aspx">Section Registration</a></li>
                        <li><a href="StudentGrade.aspx">Student Grade</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
<div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Admission Status"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
    <div>
    <br />
        <br />
        <br />
        ApplicationID :&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlApplication" DataTextField="application_id" DataValueField="application_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlApplication" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [application_id] FROM [student_application] WHERE ([admission_status] = 'Submit')">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="application_id" DataSourceID="Sqlgridview" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="application_id" HeaderText="application_id" InsertVisible="False" ReadOnly="True" SortExpression="application_id" />
                <asp:BoundField DataField="suser_id" HeaderText="suser_id" SortExpression="suser_id" />
                <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="gre_score" HeaderText="gre_score" SortExpression="gre_score" />
                <asp:BoundField DataField="gre_test_date" HeaderText="gre_test_date" SortExpression="gre_test_date" />
                <asp:BoundField DataField="ielts_score" HeaderText="ielts_score" SortExpression="ielts_score" />
                <asp:BoundField DataField="ielts_test_date" HeaderText="ielts_test_date" SortExpression="ielts_test_date" />
                <asp:BoundField DataField="toefl" HeaderText="toefl" SortExpression="toefl" />
                <asp:BoundField DataField="toefl_test_date" HeaderText="toefl_test_date" SortExpression="toefl_test_date" />
                <asp:BoundField DataField="admission_status" HeaderText="admission_status" SortExpression="admission_status" />
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
        <asp:SqlDataSource ID="Sqlgridview" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [student_application]"></asp:SqlDataSource>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="119px">
            <asp:ListItem>Admitted</asp:ListItem>
            <asp:ListItem>Rejected</asp:ListItem>
            <asp:ListItem>OnHold</asp:ListItem>
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [suser_id] = @original_suser_id AND [major] = @original_major AND (([graduation_semester] = @original_graduation_semester) OR ([graduation_semester] IS NULL AND @original_graduation_semester IS NULL)) AND (([student_year] = @original_student_year) OR ([student_year] IS NULL AND @original_student_year IS NULL)) AND (([gpa] = @original_gpa) OR ([gpa] IS NULL AND @original_gpa IS NULL)) AND (([credits_completed] = @original_credits_completed) OR ([credits_completed] IS NULL AND @original_credits_completed IS NULL))" InsertCommand="INSERT INTO [student] ([suser_id], [major], [graduation_semester], [student_year], [gpa], [credits_completed]) VALUES (@suser_id, @major, @graduation_semester, @student_year, @gpa, @credits_completed)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [major] = @major, [graduation_semester] = @graduation_semester, [student_year] = @student_year, [gpa] = @gpa, [credits_completed] = @credits_completed WHERE [suser_id] = @original_suser_id AND [major] = @original_major AND (([graduation_semester] = @original_graduation_semester) OR ([graduation_semester] IS NULL AND @original_graduation_semester IS NULL)) AND (([student_year] = @original_student_year) OR ([student_year] IS NULL AND @original_student_year IS NULL)) AND (([gpa] = @original_gpa) OR ([gpa] IS NULL AND @original_gpa IS NULL)) AND (([credits_completed] = @original_credits_completed) OR ([credits_completed] IS NULL AND @original_credits_completed IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_graduation_semester" Type="String" />
                <asp:Parameter Name="original_student_year" Type="String" />
                <asp:Parameter Name="original_gpa" Type="Decimal" />
                <asp:Parameter Name="original_credits_completed" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="graduation_semester" Type="String" />
                <asp:Parameter Name="student_year" Type="String" />
                <asp:Parameter Name="gpa" Type="Decimal" />
                <asp:Parameter Name="credits_completed" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="graduation_semester" Type="String" />
                <asp:Parameter Name="student_year" Type="String" />
                <asp:Parameter Name="gpa" Type="Decimal" />
                <asp:Parameter Name="credits_completed" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_graduation_semester" Type="String" />
                <asp:Parameter Name="original_student_year" Type="String" />
                <asp:Parameter Name="original_gpa" Type="Decimal" />
                <asp:Parameter Name="original_credits_completed" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
          <p>
            &nbsp;</p>

         <asp:Label runat="server" id="msg" CssClass="highlight"></asp:Label>
      
        <asp:SqlDataSource ID="SqlAdmission" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" UpdateCommand="UPDATE [student_application] SET [admission_status] = @admission_status WHERE [application_id] = @original_application_id">
        <UpdateParameters>
            <asp:Parameter Name="original_application_id" Type="Int16" />
            <asp:Parameter Name="admission_status" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
    </form>
</body>
</html>
