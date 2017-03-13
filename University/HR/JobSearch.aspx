<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobSearch.aspx.cs" Inherits="University.HR.JobSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Job Search" />
    <meta name="author" content="Harika" />
    <title>Job Search</title>
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
                        <li class="active"><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplicationStatus.aspx">Job Application Status</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
     <div style="margin-top:50px;" align="center">
          <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Job Search"></asp:Label>
         </h2> <br />
         <br />
         </div>
        <div style="margin-left:75px">
            <asp:Label ID="lblsearch"  Width="150" runat="server" Text="Search By :"></asp:Label><br /><br />
            <asp:Label ID="lblDepartmeent"  Width="150" runat="server" Text="Department :"></asp:Label>
             <asp:DropDownList ID="seldept" runat="server" Width="150px" AppendDataBoundItems="true" EnableViewState="false" DataSourceID="SqlDepartment" DataTextField="department_name" DataValueField="department_id">
                <asp:ListItem Selected="True" Value="-1">Select Department</asp:ListItem>
            </asp:DropDownList>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblPositionType"  Width="150" runat="server" Text="Position Type :"></asp:Label>
             <asp:DropDownList ID="selPayfrequency" Width="150" runat="server">
              <asp:ListItem Value="-1">Select Position Type</asp:ListItem>
             <asp:ListItem>Monthly</asp:ListItem>
             <asp:ListItem>Bi-Weekly</asp:ListItem>
            </asp:DropDownList><br /><br />
            <div align="center">
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear Filters" OnClick="btnClear_Click" />
            </div>
        </div>
     
        
         <div style="margin-top:50px;" align="center">       
        <asp:Panel ID="PanelResults" runat="server">
            <asp:GridView ID="gvSearchResults" runat="server" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" DataKeyNames="vacancy_id" DataSourceID="SqlSearchResults" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="vacancy_id" HeaderText="vacancy_id" InsertVisible="False" ReadOnly="True" SortExpression="vacancy_id" />
                    <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" SortExpression="Job_Title" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Position_Type" HeaderText="Position_Type" SortExpression="Position_Type" />
                    <asp:BoundField DataField="Job_Description" HeaderText="Job_Description" SortExpression="Job_Description" />
                    <asp:TemplateField HeaderText="View Details"  ShowHeader="True">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="lnkView" runat="server" CausesValidation="False" ToolTip=" click to view details" OnClick="lnkView_Click"  Text="View"></asp:LinkButton>
                                 </ItemTemplate>
                                
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Apply"  ShowHeader="True">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="lnkApply" runat="server" CausesValidation="False" ToolTip=" click to Apply" OnClick="lnkApply_Click"  Text="Apply"></asp:LinkButton>
                                 </ItemTemplate>
                                
                    </asp:TemplateField>
                    
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
            <asp:SqlDataSource ID="SqlSearchResults" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id">
            </asp:SqlDataSource>
            </asp:Panel>

       
        <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT [department_id], [department_name], [department_location], [department_phone_num], [department_email_id] FROM [department]"></asp:SqlDataSource>
      </div>
        
        
        
    </form>
</body>
</html>
