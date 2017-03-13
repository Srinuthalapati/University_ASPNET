<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="University.HR.Position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Position Creation" />
    <meta name="author" content="Harika" />
    <title>Position Creation</title>
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
    <form id="form1" runat="server">
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
                        <li><a href="HRDefault.aspx">HR - Home</a></li>
                        <li><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplicationStatus.aspx">Job Application Status</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li class="active"><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
     <div style="margin-top:50px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Position Creation"></asp:Label>
         </h2> <br />
         <br />
        </div>
        <div align="center">
                  <asp:Button ID="btnaddPosition" runat="server" CssClass="bg-primary" Text="Add" OnClick="btnaddPosition_Click"/><br /><br /><br />
                  <asp:Panel ID="PanelgvPosition" runat="server">
                      <asp:GridView ID="gvPosition" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="position_id" DataSourceID="SqlPosition" ForeColor="Black" GridLines="Vertical">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                              <asp:BoundField DataField="job_type" HeaderText="job_type" SortExpression="job_type" />
                              <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                              <asp:BoundField DataField="roles_responsibilities" HeaderText="roles_responsibilities" SortExpression="roles_responsibilities" />
                              <asp:BoundField DataField="department_id" HeaderText="department_id" SortExpression="department_id" />
                              <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                              <asp:BoundField DataField="pay_frequency" HeaderText="pay_frequency" SortExpression="pay_frequency" />
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
                      <br /><br /><br />
                  </asp:Panel>
            </div>
            
        
       <asp:Panel ID="PanelAddPosition" Visible="false" runat="server">
         <div style="margin-left: 100px">
         <asp:Label ID="lblJobtype" Width="150" runat="server" Text="Job Type :"></asp:Label>         
         <asp:DropDownList ID="selJobtype" Width="150" runat="server">
             <asp:ListItem Selected="True" Value="-1">Select Job Type</asp:ListItem>
             <asp:ListItem>part time</asp:ListItem>
             <asp:ListItem>full time</asp:ListItem>
         </asp:DropDownList>         
        <br /><br />
         <asp:Label ID="lbldesignation" runat="server" Width="150" Text="Designation :"></asp:Label>
         <asp:TextBox ID="txtdesignation" runat="server" Width="150"></asp:TextBox><br /><br />
         <asp:Label ID="lblRoles_resp" runat="server" Width="150" Text="Roles & Responsibilities :"></asp:Label>
         <asp:TextBox ID="txtrolesresp" runat="server" Width="500"></asp:TextBox><br /><br /><br />
             <asp:Label ID="lbldepartment" runat="server" Text="Department :" Width="150"></asp:Label>
            <asp:DropDownList ID="seldept" runat="server" Width="150px" AppendDataBoundItems="true" EnableViewState="false" DataSourceID="SqlDepartment" DataTextField="department_name" DataValueField="department_id">
                <asp:ListItem Selected="True" Value="-1">Select Department</asp:ListItem>
            </asp:DropDownList>      
                       
             <br /><br />
          <asp:Label ID="lblSalary" runat="server" Width="150" Text="Salary :"></asp:Label>
          <asp:TextBox ID="txtSalary" runat="server" Width="150"></asp:TextBox><br /><br />
          <asp:Label ID="lblPayfrequency" runat="server" Width="150" Text="Pay Frequency :"></asp:Label>
          <asp:DropDownList ID="selPayfrequency" Width="150" runat="server">
              <asp:ListItem Value="-1">Select Pay Frequency</asp:ListItem>
             <asp:ListItem>Monthly</asp:ListItem>
             <asp:ListItem>Bi-Weekly</asp:ListItem>
         </asp:DropDownList>   
     
                 
            <br />            
        </div>
        <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnclear" runat="server"  Text="Clear" OnClick="btnclear_Click" />
            <br />
        </div>
      </asp:Panel>
            <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT [department_name], [department_id] FROM [department]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlPosition" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [position] WHERE [position_id] = @original_position_id AND [job_type] = @original_job_type AND [designation] = @original_designation AND [roles_responsibilities] = @original_roles_responsibilities AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND [pay_frequency] = @original_pay_frequency" InsertCommand="INSERT INTO [position] ([job_type], [designation], [roles_responsibilities], [department_id], [salary], [pay_frequency]) VALUES (@job_type, @designation, @roles_responsibilities, @department_id, @salary, @pay_frequency)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [position]" UpdateCommand="UPDATE [position] SET [job_type] = @job_type, [designation] = @designation, [roles_responsibilities] = @roles_responsibilities, [department_id] = @department_id, [salary] = @salary, [pay_frequency] = @pay_frequency WHERE [position_id] = @original_position_id AND [job_type] = @original_job_type AND [designation] = @original_designation AND [roles_responsibilities] = @original_roles_responsibilities AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND [pay_frequency] = @original_pay_frequency">
                <DeleteParameters>
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_job_type" Type="String" />
                    <asp:Parameter Name="original_designation" Type="String" />
                    <asp:Parameter Name="original_roles_responsibilities" Type="String" />
                    <asp:Parameter Name="original_department_id" Type="Int16" />
                    <asp:Parameter Name="original_salary" Type="String" />
                    <asp:Parameter Name="original_pay_frequency" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="job_type" Type="String" />
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="roles_responsibilities" Type="String" />
                    <asp:Parameter Name="department_id" Type="Int16" />
                    <asp:Parameter Name="salary" Type="String" />
                    <asp:Parameter Name="pay_frequency" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="job_type" Type="String" />
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="roles_responsibilities" Type="String" />
                    <asp:Parameter Name="department_id" Type="Int16" />
                    <asp:Parameter Name="salary" Type="String" />
                    <asp:Parameter Name="pay_frequency" Type="String" />
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_job_type" Type="String" />
                    <asp:Parameter Name="original_designation" Type="String" />
                    <asp:Parameter Name="original_roles_responsibilities" Type="String" />
                    <asp:Parameter Name="original_department_id" Type="Int16" />
                    <asp:Parameter Name="original_salary" Type="String" />
                    <asp:Parameter Name="original_pay_frequency" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource> 
        
    </form>
  
</body>
</html>
