<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_Confirmation.aspx.cs" Inherits="University.Campus_Services.Event_Confirmation" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Campus Services" />
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
                        <li class="active"><a href="Event_Confirmation.aspx">Event Confirmation</a></li>
                        <li><a href="Event_Report.aspx">Event Report</a></li> 
                        <li><a href="Service_RequestForm.aspx">Service Request</a></li> 
                        <li><a href="Service_AllotedForm.aspx">Service Allotment</a></li>
                        <li><a href="ServiceRequestReport.aspx">Service Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div>     
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Confirmed Event Details"/>
         </h2> <br />
         <br />
            </div>  
        
        <p style="margin-left: 40px">
            User ID:&nbsp;
            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
        Allotted Hall:&nbsp;
        <asp:TextBox ID="TextBox18" runat="server" Width="164px"></asp:TextBox>
        <br />
        <br />
            Allotted Start Date:&nbsp;
        <asp:TextBox ID="TextBox23" runat="server" Width="148px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Allotted Start Time:&nbsp;<asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <br />
        <br />
        Allotted Capacity:&nbsp;
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />
        <br />
            Allotted End Date:&nbsp;
        <asp:TextBox ID="TextBox21" runat="server" Width="177px"></asp:TextBox>
        <br />
        <br />
            Allotted End Time:&nbsp;
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 360px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
        </p>
    
 
    
        <asp:SqlDataSource ID="eventSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual], [user_id]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual, @user_id)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual, [user_id] = @user_id WHERE [event_id] = @event_id">
            <DeleteParameters>
                <asp:Parameter Name="event_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="event_title" Type="String" />
                <asp:Parameter DbType="Date" Name="event_start_date" />
                <asp:Parameter Name="multi_day_event" Type="String" />
                <asp:Parameter DbType="Date" Name="event_end_date" />
                <asp:Parameter Name="event_end_time" Type="DateTime" />
                <asp:Parameter Name="event_start_time" Type="DateTime" />
                <asp:Parameter Name="event_place" Type="String" />
                <asp:Parameter Name="event_capacity" Type="Int16" />
                <asp:Parameter Name="audio_visual" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="event_title" Type="String" />
                <asp:Parameter DbType="Date" Name="event_start_date" />
                <asp:Parameter Name="multi_day_event" Type="String" />
                <asp:Parameter DbType="Date" Name="event_end_date" />
                <asp:Parameter Name="event_end_time" Type="DateTime" />
                <asp:Parameter Name="event_start_time" Type="DateTime" />
                <asp:Parameter Name="event_place" Type="String" />
                <asp:Parameter Name="event_capacity" Type="Int16" />
                <asp:Parameter Name="audio_visual" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="event_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
