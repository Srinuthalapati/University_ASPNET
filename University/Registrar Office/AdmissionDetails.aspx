<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionDetails.aspx.cs" Inherits="University.Registrar_Office.Applicant_Admission_details_update_form" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Admission Details" />
    <meta name="author" content="Harika" />
    <title>Admission Details</title>
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
                        <li class="active"><a href="AdmissionDetails.aspx">Admission Details</a></li> 
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
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Applicant Admission details"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
    
    <div>
     <br />
        <br />
        <br />
        User ID :&nbsp;<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlApplication" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [student_application]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="application_id" DataSourceID="SqlStudentapp" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="suser_id" HeaderText="suser_id" SortExpression="suser_id" />
                <asp:BoundField DataField="application_id" HeaderText="application_id" InsertVisible="False" ReadOnly="True" SortExpression="application_id" />
                <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="gre_score" HeaderText="gre_score" SortExpression="gre_score" />
                <asp:BoundField DataField="gre_test_date" HeaderText="gre_test_date" SortExpression="gre_test_date" />
                <asp:BoundField DataField="ielts_score" HeaderText="ielts_score" SortExpression="ielts_score" />
                <asp:BoundField DataField="ielts_test_date" HeaderText="ielts_test_date" SortExpression="ielts_test_date" />
                <asp:BoundField DataField="toefl" HeaderText="toefl" SortExpression="toefl" />
                <asp:BoundField DataField="toefl_test_date" HeaderText="toefl_test_date" SortExpression="toefl_test_date" />
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
        <asp:SqlDataSource ID="SqlStudentapp" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [student_application] WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL))" InsertCommand="INSERT INTO [student_application] ([suser_id], [degree], [major], [gre_score], [gre_test_date], [ielts_score], [ielts_test_date], [toefl], [toefl_test_date]) VALUES (@suser_id, @degree, @major, @gre_score, @gre_test_date, @ielts_score, @ielts_test_date, @toefl, @toefl_test_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [suser_id], [application_id], [degree], [major], [gre_score], [gre_test_date], [ielts_score], [ielts_test_date], [toefl], [toefl_test_date] FROM [student_application] WHERE ([suser_id] = @suser_id)" UpdateCommand="UPDATE [student_application] SET [suser_id] = @suser_id, [degree] = @degree, [major] = @major, [gre_score] = @gre_score, [gre_test_date] = @gre_test_date, [ielts_score] = @ielts_score, [ielts_test_date] = @ielts_test_date, [toefl] = @toefl, [toefl_test_date] = @toefl_test_date WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtUserID" Name="suser_id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Application Status:
        <asp:Label ID="AppStatusLabel" runat="server" CssClass="highlight"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" OnClick="Button1_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
    </form>
</body>
</html>
