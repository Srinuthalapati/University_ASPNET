<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_Report.aspx.cs" Inherits="University.Campus_Services.WebForm2" %>


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
                        <li><a href="Hostel_Confirmation.aspx">Hostel Confiramtion</a></li>                        
                        <li><a href="Hostel_RoomReport.aspx">Room Report</a></li> 
                        <li><a href="Event_Registration.aspx">Event Registration</a></li> 
                        <li><a href="Event_Confirmation.aspx">Event Confirmation</a></li>
                        <li class="active"><a href="Event_Report.aspx">Event Report</a></li> 
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
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Event Report"/>
         </h2> <br />
         <br />
            </div> 
        From :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Event Hall :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Cowart Hall</asp:ListItem>
            <asp:ListItem>Ball Room</asp:ListItem>
            <asp:ListItem>Student Center</asp:ListItem>
            <asp:ListItem>ZSC Lawn</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="eventSource2" Visible="False">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" />
                <asp:BoundField DataField="event_id" HeaderText="Event ID" InsertVisible="False" ReadOnly="True" SortExpression="event_id" />
                <asp:BoundField DataField="event_title" HeaderText="Event Title" SortExpression="event_title" />
                <asp:BoundField DataField="multi_day_event" HeaderText="Multi Day Event" SortExpression="multi_day_event" />
                <asp:BoundField DataField="event_start_date" HeaderText="Event Start Date" SortExpression="event_start_date" />
                <asp:BoundField DataField="event_end_date" HeaderText="Event End Date" SortExpression="event_end_date" />
                <asp:BoundField DataField="event_start_time" HeaderText="Event Start Time" SortExpression="event_start_time" />
                <asp:BoundField DataField="event_end_time" HeaderText="Event End Time" SortExpression="event_end_time" />
                <asp:BoundField DataField="event_place" HeaderText="Event Place" SortExpression="event_place" />
                <asp:BoundField DataField="event_capacity" HeaderText="Event Capacity" SortExpression="event_capacity" />
                <asp:BoundField DataField="audio_visual" HeaderText="Audio Visual" SortExpression="audio_visual" />
            </Columns>
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
    
    </div>
        <asp:SqlDataSource ID="eventSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual], [user_id]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual, @user_id)" SelectCommand="Select * from event where event_start_date between @event_start_date1  and @event_start_date2  and event_place =@event_place;" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual, [user_id] = @user_id WHERE [event_id] = @event_id">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="event_start_date1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="event_start_date2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="event_place" PropertyName="SelectedValue" />
            </SelectParameters>
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
    </form>
</body>
</html>

