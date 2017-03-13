<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_Registration.aspx.cs" Inherits="University.Campus_Services.WebForm1" %>
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
                        <li class="active"><a href="Event_Registration.aspx">Event Registration</a></li> 
                        <li><a href="Event_Confirmation.aspx">Event Confirmation</a></li>
                        <li><a href="Event_Report.aspx">Event Report</a></li> 
                        <li><a href="Service_RequestForm.aspx">Service Request</a></li> 
                        <li><a href="Service_AllotedForm.aspx">Service Allotment</a></li>
                        <li><a href="ServiceRequestReport.aspx">Service Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div style="margin-left: 40px">    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Event Registration Form"/>
         </h2> <br />
         <br />
            </div> 
        
        <br />
        <span class="auto-style1">User ID:<asp:TextBox ID="TextBox25" runat="server" Width="141px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click" Text="Go" />
        <br />
        <br />
        First Name:<asp:TextBox ID="TextBox2" runat="server" Width="179px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:<asp:TextBox ID="TextBox3" runat="server" Width="177px" Height="22px" ></asp:TextBox>
        <br />
        <br />
        Phone Number:&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="168px" style="height: 22px"></asp:TextBox>
        <br />
        <br />
        Email:
        <asp:TextBox ID="TextBox6" runat="server" Width="287px"></asp:TextBox>
        <br />
        <br />
        Event Title:&nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="274px"></asp:TextBox>
        <br />
        <br />
        Event Description:&nbsp;<asp:TextBox ID="TextBox8" runat="server" Height="56px" TextMode="MultiLine" Width="226px"></asp:TextBox>
        <br />
        <br />
        <br />
        Multi-Day Event:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        Event Start Date:&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Event Start Time:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox11" runat="server" Width="134px"></asp:TextBox>
        <br />
        <br />
        Event End Date:&nbsp;
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Event End Time:&nbsp;
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Event Hall* :&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Cowart Hall</asp:ListItem>
            <asp:ListItem>Ball Room</asp:ListItem>
            <asp:ListItem>Student Center</asp:ListItem>
            <asp:ListItem>ZSC Lawn</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        Expected attendance:&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
        Audio / Video Visuals:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>YES</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:SqlDataSource ID="eventsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual], [user_id]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual, @user_id)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual, [user_id] = @user_id WHERE [event_id] = @event_id">
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
        <asp:SqlDataSource ID="usersource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [user_info] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user_info] ([first_name], [last_name], [email_id], [contact_no]) VALUES (@first_name, @last_name, @email_id, @contact_no)" SelectCommand="SELECT [user_id], [first_name], [last_name], [email_id], [contact_no] FROM [user_info]" UpdateCommand="UPDATE [user_info] SET [first_name] = @first_name, [last_name] = @last_name, [email_id] = @email_id, [contact_no] = @contact_no WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </span>
    
    </div>
    </form>
</body>
</html>
