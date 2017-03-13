<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_AllotedForm.aspx.cs" Inherits="University.Campus_Services.Service_AllotedForm" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Employee Joining" />
    <meta name="author" content="Harika" />
    <title>Campus Services</title>
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
                        <li><a href="CampusServicesHome.aspx">Campus - Home</a></li>
                        <li><a href="Hostel_Accomodation.aspx">Hostel Accomodation</a></li>
                        <li><a href="Hostel_Confirmation.aspx">Hostel Confirmation</a></li>                        
                        <li><a href="Hostel_RoomReport.aspx">Room Report</a></li> 
                        <li><a href="Event_Registration.aspx">Event Registration</a></li> 
                        <li><a href="Event_Confirmation.aspx">Event Confirmation</a></li>
                        <li><a href="Event_Report.aspx">Event Report</a></li> 
                        <li><a href="Service_RequestForm.aspx">Service Request</a></li> 
                        <li class="active"><a href="Service_AllotedForm.aspx">Service Allotment</a></li>
                        <li><a href="ServiceRequestReport.aspx">Service Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
         
           <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Service Allocation"/>
         </h2> <br />
         <br />
            </div> 
            <p style="margin-left: 40px">
                Room No :<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="roomservice" DataTextField="room_no" DataValueField="room_no" Width="69px">
                </asp:DropDownList>
                </p>
            <p style="margin-left: 40px">
                Service Id:<asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="servicesource" DataTextField="service_id" DataValueField="service_id">
                </asp:DropDownList>
                </p>
            <p style="margin-left: 40px">
                <br />
        Service Completion Time:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>10 AM</asp:ListItem>
            <asp:ListItem>11 AM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        Service Completion Date:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Service Status:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Progress</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
            </p>
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Allot service" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="servicesource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [service] WHERE [service_id] = @original_service_id AND (([service_alloted_time] = @original_service_alloted_time) OR ([service_alloted_time] IS NULL AND @original_service_alloted_time IS NULL)) AND (([service_alloted_date] = @original_service_alloted_date) OR ([service_alloted_date] IS NULL AND @original_service_alloted_date IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [service] ([service_alloted_time], [service_alloted_date], [status]) VALUES (@service_alloted_time, @service_alloted_date, @status)" SelectCommand="SELECT * FROM [service]" UpdateCommand="UPDATE [service] SET [service_alloted_time] = @service_alloted_time, [service_alloted_date] = @service_alloted_date, [status] = @status WHERE [service_id] = @original_service_id ;" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_service_id" Type="Int16" />
                <asp:Parameter Name="original_service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="original_service_alloted_date" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter Name="service_alloted_date" DbType="Date" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter Name="service_alloted_date" DbType="Date" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomservice" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="SELECT * FROM [room]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>

