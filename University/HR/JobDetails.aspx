<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobDetails.aspx.cs" Inherits="University.HR.JobDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Details</title>
</head>
<body>
    <form id="form1" runat="server">
     <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Job Details"></asp:Label>
         </h2> <br />
         <br /><br />
        </div>
        <div style="margin-left: 100px">        
         <asp:Label ID="lblPositiontitle" Width="150" runat="server" Text="Position Title :"></asp:Label>
         <asp:TextBox ID="txtDesignation" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox><br /><br />
         <asp:Label ID="lbldepartment" runat="server" Text="Department :" Width="150"></asp:Label>
         <asp:TextBox ID="txtDepartment" runat="server" Width="150" ReadOnly="true"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblSalary" runat="server" Width="150" Text="Salary :"></asp:Label>
        <asp:TextBox ID="txtSalary" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br />
         <asp:Label ID="lblJobtype" Width="150" runat="server" Text="Job Type :"></asp:Label>         
         <asp:TextBox ID="txtJobtype" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblDuration" runat="server" Width="150" Text="Duration :"></asp:Label>
         <asp:TextBox ID="txtDuration" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br />        
        <asp:Label ID="lblPayfrequency" runat="server" Width="150" Text="Pay Frequency :"></asp:Label>
        <asp:TextBox ID="txtPayFrequency" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br />     
         <asp:Label ID="lblRoles_resp" runat="server" Width="150" Height="50px" Text="Job Description :"></asp:Label>
         <asp:TextBox ID="txtrolesresp" runat="server" Width="300" Height="50px" ReadOnly="true"></asp:TextBox><br /><br />
        <asp:Label ID="lblRequiredQualification" runat="server" Width="150px" Text="Required Qualification :" Height="50px"></asp:Label>
         <asp:TextBox ID="txtRequiredQualification" runat="server" Width="300" Height="50px" ReadOnly="true"></asp:TextBox><br /><br />
        <asp:Label ID="lblOpenDate" runat="server" Width="150" Text="Open Date :"></asp:Label>
         <asp:TextBox ID="txtOpenDate" ReadOnly="true" Width="150" runat="server" ></asp:TextBox><br /><br />
         <asp:Label ID="lblCloseDate" runat="server" Width="150" Text="Close Date :"></asp:Label>
         <asp:TextBox ID="txtCloseDate" ReadOnly="true" Width="150" runat="server" ></asp:TextBox>&nbsp;
         <br />
            <br />
            </div>
        <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnApply" runat="server"  Text="Apply" OnClick="btnApply_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnBack" runat="server"  Text="Back" OnClick="btnBack_Click" />
            <br />
            <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT * FROM [vacancy]"></asp:SqlDataSource>
        </div>
    
    
        
    
    
    </form>
</body>
</html>
