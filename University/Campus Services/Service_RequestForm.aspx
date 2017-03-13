<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_RequestForm.aspx.cs" Inherits="University.Campus_Services.Service_RequestForm" %>

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
                        <li class="active"><a href="Service_RequestForm.aspx">Service Request</a></li> 
                        <li ><a href="Service_AllotedForm.aspx">Service Allotment</a></li>
                        <li><a href="ServiceRequestReport.aspx">Service Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>    
         <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Service Request Form"/>
         </h2> <br />
         <br />
            </div> 
        <br />
        <br />
        Room Number:&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="roomservice2" DataTextField="room_no" DataValueField="room_no">
        </asp:DropDownList>
        &nbsp;
        <br />
        <br />
        Service Type:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Electricity</asp:ListItem>
            <asp:ListItem>Plumbing</asp:ListItem>
            <asp:ListItem>Carpentry</asp:ListItem>
            <asp:ListItem>Lawn Move</asp:ListItem>
            <asp:ListItem>House Keeping</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Service Time:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>9 AM</asp:ListItem>
            <asp:ListItem>10 AM</asp:ListItem>
            <asp:ListItem>11 AM</asp:ListItem>
            <asp:ListItem>12 PM</asp:ListItem>
            <asp:ListItem>1 PM</asp:ListItem>
            <asp:ListItem>2 PM</asp:ListItem>
            <asp:ListItem>3 PM</asp:ListItem>
            <asp:ListItem>4 PM</asp:ListItem>
            <asp:ListItem>5 PM</asp:ListItem>
            <asp:ListItem>6 PM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Service Date:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="156px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Description:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="64px" TextMode="MultiLine" Width="276px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="61px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="servicesource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [service] WHERE [service_id] = @service_id" InsertCommand="INSERT INTO [service] ([room_no], [service_type], [service_req_time], [service_req_date], [service_alloted_time], [service_alloted_date], [status]) VALUES (@room_no, @service_type, @service_req_time, @service_req_date, @service_alloted_time, @service_alloted_date, @status)" SelectCommand="SELECT * FROM [service]" UpdateCommand="UPDATE [service] SET [room_no] = @room_no, [service_type] = @service_type, [service_req_time] = @service_req_time, [service_req_date] = @service_req_date, [service_alloted_time] = @service_alloted_time, [service_alloted_date] = @service_alloted_date, [status] = @status WHERE [service_id] = @service_id">
            <DeleteParameters>
                <asp:Parameter Name="service_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="service_type" Type="String" />
                <asp:Parameter Name="service_req_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_req_date" />
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_alloted_date" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="service_type" Type="String" />
                <asp:Parameter Name="service_req_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_req_date" />
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_alloted_date" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomservice2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @user_id, @duration_stay)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @room_no">
            <DeleteParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
                <asp:Parameter Name="room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

