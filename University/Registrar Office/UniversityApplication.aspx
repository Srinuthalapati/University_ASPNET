<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UniversityApplication.aspx.cs" Inherits="University.Registrar_Office.UniversityApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="HR Landing Page" />
    <meta name="author" content="Harika" />
    <title>University Application</title>
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
                        <li class="active"><a href="UniversirtyApplication.aspx">University Application</a></li>
                        <li><a href="AdmissionStatus.aspx">Admission Status</a></li>                        
                        <li><a href="AdmissionDetails.aspx">Admission Details</a></li> 
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
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="University Application"></asp:Label>
          </h2> <br />
         <asp:Label ID="Label2" ForeColor="Blue" Width="500" runat="server" Text="(Please Fill out the Application form carefully)"></asp:Label>
         <br /><br />
        </div>
    
    <div>
         
        <br />
        <br />
        <br />
         SUserID:&nbsp;
         <asp:TextBox ID="txtSuserid" runat="server" Width="354px"></asp:TextBox>

         <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Course Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Degree Applying"></asp:Label>
        :<br />
         <asp:RadioButtonList ID="DegreeRadioButton" runat="server">
             <asp:ListItem>Graduate</asp:ListItem>
             <asp:ListItem>UnderGraduate</asp:ListItem>
         </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Major field of Study"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="MajorDropDown" runat="server" Width="132px" DataSourceID="SqlMajor" DataTextField="program_name" DataValueField="program_id">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlMajor" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [program]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Education Background"></asp:Label>
        <br />
        (List your previous schools beginning with the most recent)<br />
        <br />
        <asp:Panel ID="PanelGVEducationHistory" Visible="true" runat="server">
            
           <asp:Button ID="btnaddEduHistory" runat="server" OnClick="btnaddEduHistory_Click" Text="Add" style="height: 26px" /><br /> <br />
                <asp:GridView ID="gvEducationHistory" ShowHeaderWhenEmpty="True" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id,school_name" DataSourceID="SqlEducationHistory" AllowPaging="True" AllowSorting="True"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" >
                    <Columns>
                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                        <asp:BoundField DataField="school_name" HeaderText="school_name" SortExpression="school_name" ReadOnly="True" />
                        <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                        <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                        <asp:BoundField DataField="gpa" HeaderText="gpa" SortExpression="gpa" />
                        <asp:BoundField DataField="graduated_year" HeaderText="graduated_year" SortExpression="graduated_year" />
                    </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <EditRowStyle BackColor="Yellow"/>
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView> 
            <asp:SqlDataSource ID="SqlEducationHistory" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [education_history] WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year" InsertCommand="INSERT INTO [education_history] ([user_id], [school_name], [degree], [major], [gpa], [graduated_year]) VALUES (@user_id, @school_name, @degree, @major, @gpa, @graduated_year)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [education_history] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [education_history] SET [degree] = @degree, [major] = @major, [gpa] = @gpa, [graduated_year] = @graduated_year WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year">
                <DeleteParameters>
                    <asp:Parameter Name="original_user_id" Type="Int32" />
                    <asp:Parameter Name="original_school_name" Type="String" />
                    <asp:Parameter Name="original_degree" Type="String" />
                    <asp:Parameter Name="original_major" Type="String" />
                    <asp:Parameter Name="original_gpa" Type="Decimal" />
                    <asp:Parameter Name="original_graduated_year" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="school_name" Type="String" />
                    <asp:Parameter Name="degree" Type="String" />
                    <asp:Parameter Name="major" Type="String" />
                    <asp:Parameter Name="gpa" Type="Decimal" />
                    <asp:Parameter Name="graduated_year" Type="Int16" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSuserid" Name="user_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="degree" Type="String" />
                    <asp:Parameter Name="major" Type="String" />
                    <asp:Parameter Name="gpa" Type="Decimal" />
                    <asp:Parameter Name="graduated_year" Type="Int16" />
                    <asp:Parameter Name="original_user_id" Type="Int32" />
                    <asp:Parameter Name="original_school_name" Type="String" />
                    <asp:Parameter Name="original_degree" Type="String" />
                    <asp:Parameter Name="original_major" Type="String" />
                    <asp:Parameter Name="original_gpa" Type="Decimal" />
                    <asp:Parameter Name="original_graduated_year" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>   
         </asp:Panel>
<asp:Panel ID="PanelAddEducationHistory" Visible="false" runat="server">
         <asp:Label ID="lblSchoolName" Width="150" runat="server" Text="School Name :"></asp:Label> 
         <asp:TextBox ID="txtSchoolName" runat="server" Width="150px" ></asp:TextBox>
         <br /><br />
         <asp:Label ID="lbldegree" Width="150" runat="server" Text="Degree :"></asp:Label>         
         <asp:TextBox ID="txtdegree" runat="server" Width="150px" ></asp:TextBox>        
        <br /><br />
         <asp:Label ID="lblmajor" runat="server" Text="Major :" Width="150"></asp:Label>
         <asp:TextBox ID="txtmajor" runat="server" Width="150"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblgpa" runat="server" Width="150" Text="GPA :"></asp:Label>
        <asp:TextBox ID="txtgpa" runat="server" Width="150"></asp:TextBox><br /><br />
        <asp:Label ID="lblgraduated_year" runat="server" Width="150" Text="Graduated Year :"></asp:Label>
        <asp:TextBox ID="txtgraduated_year" runat="server" Width="150"></asp:TextBox><br /><br />
         <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnedusubmit" runat="server"  Text="Submit" OnClick="btnedusubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btneduclear" runat="server"  Text="Clear" OnClick="btneduclear_Click" />
            <br />
        </div>
        </asp:Panel>
         &nbsp; <br />
        <br />
&nbsp;<br />
        <br />
        <asp:Label ID="Label37" runat="server" Font-Size="X-Large" Text="GRE Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label38" runat="server" Font-Size="Large" Text="GRE Score Combined"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="GRETextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label39" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="GDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label51" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label41" runat="server" Font-Size="X-Large" Text="TOEFL Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label42" runat="server" Font-Size="Large" Text="TOEFL Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TOEFLTextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label43" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label52" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label45" runat="server" Font-Size="X-Large" Text="IELTS Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label46" runat="server" Font-Size="Large" Text="IELTS Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="IELTSTextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label47" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="IDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label53" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;<br />
        Application Status:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Submit</asp:ListItem>
            <asp:ListItem>Save for later</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlStudentAppli" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [student_application] WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status" InsertCommand="INSERT INTO [student_application] ([suser_id], [degree], [major], [gre_score], [gre_test_date], [ielts_score], [ielts_test_date], [toefl], [toefl_test_date], [admission_status]) VALUES (@suser_id, @degree, @major, @gre_score, @gre_test_date, @ielts_score, @ielts_test_date, @toefl, @toefl_test_date, @admission_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student_application]" UpdateCommand="UPDATE [student_application] SET [suser_id] = @suser_id, [degree] = @degree, [major] = @major, [gre_score] = @gre_score, [gre_test_date] = @gre_test_date, [ielts_score] = @ielts_score, [ielts_test_date] = @ielts_test_date, [toefl] = @toefl, [toefl_test_date] = @toefl_test_date, [admission_status] = @admission_status WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status">
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
                <asp:Parameter Name="original_admission_status" Type="String" />
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
                <asp:Parameter Name="admission_status" Type="String" />
            </InsertParameters>
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
                <asp:Parameter Name="admission_status" Type="String" />
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
                <asp:Parameter Name="original_admission_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SubButton" runat="server" Font-Size="Large" Height="48px" Text="Submit" Width="157px" OnClick="SubButton_Click" />
        <br />
    
    
    </div>
    </form>
</body>
</html>
