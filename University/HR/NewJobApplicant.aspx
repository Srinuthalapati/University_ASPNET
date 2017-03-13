<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewJobApplicant.aspx.cs" Inherits="University.HR.NewJobApplicant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Job Applicant</title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="New Job Applicant"></asp:Label>
         </h2> <br />
         <br /><br />
        

         <asp:Label ID="lblUserid" Width="150" runat="server" Text="User ID :"></asp:Label>       
         <asp:TextBox ID="txtUserid" runat="server" Width="150px" ReadOnly="true"></asp:TextBox> 
        <br /><br /><br /> <br />
        <asp:Panel ID="PanelGVEducationHistory" Visible="true" runat="server">
            ADD EDUCATION HISTORY <br /> <br /><br />
           <asp:Button ID="btnaddEduHistory" runat="server" OnClick="btnaddEduHistory_Click" Text="Add" style="height: 26px" /><br /> <br /><br /> <br />
                <asp:GridView ID="gvEducationHistory" ShowHeaderWhenEmpty="True" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id,school_name" DataSourceID="SqlEducationHistory"   GridLines="Vertical" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="school_name" HeaderText="school_name" ReadOnly="True" SortExpression="school_name" />
                        <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree" />
                        <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                        <asp:BoundField DataField="gpa" HeaderText="gpa" SortExpression="gpa" />
                        <asp:BoundField DataField="graduated_year" HeaderText="graduated_year" SortExpression="graduated_year" />
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
            <asp:SqlDataSource ID="SqlEducationHistory" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [education_history] WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year" InsertCommand="INSERT INTO [education_history] ([user_id], [school_name], [degree], [major], [gpa], [graduated_year]) VALUES (@user_id, @school_name, @degree, @major, @gpa, @graduated_year)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [education_history] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [education_history] SET [degree] = @degree, [major] = @major, [gpa] = @gpa, [graduated_year] = @graduated_year WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year">
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
                    <asp:ControlParameter ControlID="txtUserid" Name="user_id" PropertyName="Text" Type="Int32" />
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
        </div>
        
        <div style="margin-left: 100px">
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
        </div>
        <br /> <br /><br /> <br />
        <div style="margin-top:75px;" align="center">
        <asp:Panel ID="PanelgvEmploymentHistory" Visible="true" runat="server">
           ADD EMPLOYMENT HISTORY <br /> <br />
           <asp:Button ID="btnaddEmpHistory" runat="server" OnClick="btnaddEmpHistory_Click" Text="Add" /><br /> <br /><br /> <br />
                <asp:GridView ID="gvEmpHistory" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" DataKeyNames="juser_id,employer_name" DataSourceID="SqlEmpHistory" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                   
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="employer_name" HeaderText="employer_name" ReadOnly="True" SortExpression="employer_name" />
                        <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                        <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                        <asp:BoundField DataField="job_description" HeaderText="job_description" SortExpression="job_description" />
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
            <br /> <br /><br /> <br /> 
            <asp:SqlDataSource ID="SqlEmpHistory" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [employement_history] WHERE [juser_id] = @original_juser_id AND [employer_name] = @original_employer_name AND [designation] = @original_designation AND [duration] = @original_duration AND (([job_description] = @original_job_description) OR ([job_description] IS NULL AND @original_job_description IS NULL))" InsertCommand="INSERT INTO [employement_history] ([juser_id], [employer_name], [designation], [duration], [job_description]) VALUES (@juser_id, @employer_name, @designation, @duration, @job_description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [employement_history] WHERE ([juser_id] = @juser_id)" UpdateCommand="UPDATE [employement_history] SET [designation] = @designation, [duration] = @duration, [job_description] = @job_description WHERE [juser_id] = @original_juser_id AND [employer_name] = @original_employer_name AND [designation] = @original_designation AND [duration] = @original_duration AND (([job_description] = @original_job_description) OR ([job_description] IS NULL AND @original_job_description IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_juser_id" Type="Int32" />
                    <asp:Parameter Name="original_employer_name" Type="String" />
                    <asp:Parameter Name="original_designation" Type="String" />
                    <asp:Parameter Name="original_duration" Type="Decimal" />
                    <asp:Parameter Name="original_job_description" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="juser_id" Type="Int32" />
                    <asp:Parameter Name="employer_name" Type="String" />
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="duration" Type="Decimal" />
                    <asp:Parameter Name="job_description" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtUserid" Name="juser_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="duration" Type="Decimal" />
                    <asp:Parameter Name="job_description" Type="String" />
                    <asp:Parameter Name="original_juser_id" Type="Int32" />
                    <asp:Parameter Name="original_employer_name" Type="String" />
                    <asp:Parameter Name="original_designation" Type="String" />
                    <asp:Parameter Name="original_duration" Type="Decimal" />
                    <asp:Parameter Name="original_job_description" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
         </asp:Panel>
        </div>
        <br /> <br /><br /> <br />
        <div style="margin-left: 100px">
        <asp:Panel ID="PanelAddEmpHistory" Visible="false" runat="server">
         <asp:Label ID="lblemployer_name" Width="150" runat="server" Text="Employer Name :"></asp:Label> 
         <asp:TextBox ID="txtEmployerName" runat="server" Width="150px" ></asp:TextBox>
         <br /><br />
         <asp:Label ID="lbldesignation" Width="150" runat="server" Text="Designation :"></asp:Label>         
         <asp:TextBox ID="txtDesignation" runat="server" Width="150px" ></asp:TextBox>        
        <br /><br />
         <asp:Label ID="lblduration" runat="server" Text="Duration :" Width="150"></asp:Label>
         <asp:TextBox ID="txtDuration" runat="server" Width="150"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lbljob_description" runat="server" Width="150" Text="Job Description :"></asp:Label>
        <asp:TextBox ID="txtJobdescription" runat="server" Width="150"></asp:TextBox><br /><br />
        <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnempsubmit" runat="server"  Text="Submit" OnClick="btnempsubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnempclear" runat="server"  Text="Clear" OnClick="btnempclear_Click" />
            <br />
        </div>
        </asp:Panel>
        </div>
        <br /><br /><br /> 
        <div style="margin-top:50px;" align="center">
            <asp:Button ID="btnSubmitForm" runat="server"  Text="Proceed" OnClick="btnSubmitForm_Click" />&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
