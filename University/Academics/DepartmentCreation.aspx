<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentCreation.aspx.cs" Inherits="University.Academics.DepartmentCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Create Department</title>
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
    <form id="DepartmentCreationForm" runat="server">
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
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="Department - Creation Form"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" Width="150" runat="server"></asp:Label> 
        <br />
        </div>

        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
        <br />
        <asp:SqlDataSource ID="DepartmentTBLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
        <br />
        <hr />
        <br />
        <asp:Label ID="DepartmentName" runat="server" Text="Department Name:"></asp:Label>
        <asp:TextBox ID="DepartmentNameTB" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="DepartmentDetailsLbl" runat="server" Text="***Department Contact Details" CssClass="auto-style1"></asp:Label>
        <br class="auto-style1" />
        <br />
        <asp:Label ID="DepartmentLocationLbl" runat="server" Text="Department Location:"></asp:Label>
        <asp:DropDownList ID="DepartmentLocationDDL" runat="server">
            <asp:ListItem>Block A - Room 101</asp:ListItem>
            <asp:ListItem>Block A - Room 120</asp:ListItem>
            <asp:ListItem>Block A - Room 302</asp:ListItem>
            <asp:ListItem>Block A - Room 311</asp:ListItem>
            <asp:ListItem>Block A - Room 312</asp:ListItem>
            <asp:ListItem>Block B - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 111</asp:ListItem>
            <asp:ListItem>Block B - Room 111</asp:ListItem>
            <asp:ListItem>Block B - Room 119</asp:ListItem>
            <asp:ListItem>Block B - Room 129</asp:ListItem>
            <asp:ListItem>Block B - Room 201</asp:ListItem>
            <asp:ListItem>Block B - Room 204</asp:ListItem>
            <asp:ListItem>Block B - Room 211</asp:ListItem>
            <asp:ListItem>Block B - Room 212</asp:ListItem>
            <asp:ListItem>Block B - Room 214</asp:ListItem>
            <asp:ListItem>Block B - Room 221</asp:ListItem>
            <asp:ListItem>Block C - Room 119</asp:ListItem>
            <asp:ListItem>Block C - Room 201</asp:ListItem>
            <asp:ListItem>Block C - Room 210</asp:ListItem>
            <asp:ListItem>Block C - Room 219</asp:ListItem>
            <asp:ListItem>Block C - Room 310</asp:ListItem>
            <asp:ListItem>Block A - Room 111</asp:ListItem>
            <asp:ListItem>Block A - Room 221</asp:ListItem>
            <asp:ListItem>Block A - Room 222</asp:ListItem>
            <asp:ListItem>Block A - Room 121</asp:ListItem>
            <asp:ListItem>Block A - Room 301</asp:ListItem>
            <asp:ListItem>Block C - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 222</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="DepartmentNoLbl" runat="server" Text="Phone Number:"></asp:Label>
        <asp:TextBox ID="DepartmentPhoneNoTB" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="DepartmentEmailIDLbl" runat="server" Text="Email ID:"></asp:Label>
        <asp:TextBox ID="DepartmentEmailIDTB" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="DepartmentSubmitButton" runat="server" Text="Submit" OnClick="DepartmentSubmitButton_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="DepartmentClearButton" runat="server" Text="Clear" OnClick="DepartmentClearButton_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="sqldepartment" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [department] WHERE [department_id] = @original_department_id AND [department_name] = @original_department_name AND [department_location] = @original_department_location AND [department_phone_num] = @original_department_phone_num AND [department_email_id] = @original_department_email_id" InsertCommand="INSERT INTO [department] ([department_name], [department_location], [department_phone_num], [department_email_id]) VALUES (@department_name, @department_location, @department_phone_num, @department_email_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [department]" UpdateCommand="UPDATE [department] SET [department_name] = @department_name, [department_location] = @department_location, [department_phone_num] = @department_phone_num, [department_email_id] = @department_email_id WHERE [department_id] = @original_department_id AND [department_name] = @original_department_name AND [department_location] = @original_department_location AND [department_phone_num] = @original_department_phone_num AND [department_email_id] = @original_department_email_id">
            <DeleteParameters>
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_department_name" Type="String" />
                <asp:Parameter Name="original_department_location" Type="String" />
                <asp:Parameter Name="original_department_phone_num" Type="String" />
                <asp:Parameter Name="original_department_email_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="department_name" Type="String" />
                <asp:Parameter Name="department_location" Type="String" />
                <asp:Parameter Name="department_phone_num" Type="String" />
                <asp:Parameter Name="department_email_id" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="department_name" Type="String" />
                <asp:Parameter Name="department_location" Type="String" />
                <asp:Parameter Name="department_phone_num" Type="String" />
                <asp:Parameter Name="department_email_id" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_department_name" Type="String" />
                <asp:Parameter Name="original_department_location" Type="String" />
                <asp:Parameter Name="original_department_phone_num" Type="String" />
                <asp:Parameter Name="original_department_email_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <hr />
        <asp:GridView ID="DepartmentTBLGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="department_id" DataSourceID="DepartmentTBLDataSource" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" PageSize="5" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="department_id" HeaderText="Department ID" InsertVisible="False" ReadOnly="True" SortExpression="department_id" />
                <asp:BoundField DataField="department_name" HeaderText="Department Name" SortExpression="department_name" />
                <asp:BoundField DataField="department_location" HeaderText="Department Ofc Location" SortExpression="department_location" />
                <asp:BoundField DataField="department_phone_num" HeaderText="Department Phone No" SortExpression="department_phone_num" />
                <asp:BoundField DataField="department_email_id" HeaderText="Department Email_ID" SortExpression="department_email_id" />
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
    </form>
</body>
</html>