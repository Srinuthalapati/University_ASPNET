<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_Confirmation.aspx.cs" Inherits="University.Campus_Services.Hostel_Confirmation" %>

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
                        <li class="active"><a href="Hostel_Confirmation.aspx">Hostel Confirmation</a></li>                        
                        <li><a href="Hostel_RoomReport.aspx">Room Report</a></li> 
                        <li><a href="Event_Registration.aspx">Event Registration</a></li> 
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
        <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Hostel Confirmation"/>
         </h2> <br />
         <br /><br />
        </div>

        
        <p style="margin-left: 80px">
            User ID:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Allotted Room Number :
        <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duration Assigned :
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;(MM/DD/YYYY)<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <div>
    
        <asp:SqlDataSource ID="roomSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [status], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @status, @user_id, @duration_stay)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [status] = @status, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @room_no">
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
    
    </div>
    </form>
</body>
</html>
