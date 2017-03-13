<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApplication.aspx.cs" Inherits="University.HR.JobApplication" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Job Application Page" />
    <meta name="author" content="Harika" />
    <title>Job Application</title>    
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Job Application"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnNewUser" runat="server" Width="150" Text="New User" OnClick="btnNewUser_Click" />
          <br /><br />
        </div>
        <div style="margin-left: 100px">

         
         <asp:Label ID="lblUserid" Width="150" runat="server" Text="User ID :"></asp:Label>       
         <asp:TextBox ID="txtUserid" runat="server" Width="150px"></asp:TextBox>        
         <br /><br />
          
        </div>
         <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnBack" runat="server"  Text="Back" OnClick="btnback_Click" />
            <br />
        </div> 

        <asp:SqlDataSource ID="Sqljobapplication" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [job_application] WHERE [job_application_id] = @original_job_application_id AND [juser_id] = @original_juser_id AND [vacancy_id] = @original_vacancy_id AND [date_applied] = @original_date_applied AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [job_application] ([juser_id], [vacancy_id], [date_applied], [status]) VALUES (@juser_id, @vacancy_id, @date_applied, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [job_application]" UpdateCommand="UPDATE [job_application] SET [juser_id] = @juser_id, [vacancy_id] = @vacancy_id, [date_applied] = @date_applied, [status] = @status WHERE [job_application_id] = @original_job_application_id AND [juser_id] = @original_juser_id AND [vacancy_id] = @original_vacancy_id AND [date_applied] = @original_date_applied AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_job_application_id" Type="Int32" />
                <asp:Parameter Name="original_juser_id" Type="Int32" />
                <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_date_applied" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="juser_id" Type="Int32" />
                <asp:Parameter Name="vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="date_applied" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="juser_id" Type="Int32" />
                <asp:Parameter Name="vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="date_applied" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_job_application_id" Type="Int32" />
                <asp:Parameter Name="original_juser_id" Type="Int32" />
                <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_date_applied" />
                <asp:Parameter Name="original_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource> 

    </form>
</body>
</html>
