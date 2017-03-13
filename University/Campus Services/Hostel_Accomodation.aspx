<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_Accomodation.aspx.cs" Inherits="University.Campus_Services.Hostel_Accomodation" %>

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
                        <li class="active"><a href="Hostel_Accomodation.aspx">Hostel Accomodation</a></li>
                        <li><a href="Hostel_Confirmation.aspx">Hostel Confirmation</a></li>                        
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

        
    
    <div class="auto-style1">
    <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Hostel Accomodation"/>
         </h2> <br />
         <br /><br />
        </div>
        
        <p style="margin-left: 40px">
            User ID: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
            <span class="auto-style1">First Name:&nbsp;
        <asp:TextBox ID="TextBox12" runat="server" Width="179px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="177px" Height="22px" ></asp:TextBox>
        <br />
        <br />
        Phone Number:&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="168px" style="height: 22px"></asp:TextBox>
        <br />
        <br />
        Email:&nbsp;
        <asp:TextBox ID="TextBox13" runat="server" Width="287px"></asp:TextBox>
        </span>
        </p>
        <p style="margin-left: 40px">
            <span class="auto-style1">
        <br />
        </span>Type of accommodation : 
            
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="Select">Selected value</asp:ListItem>
                <asp:ListItem Value="Single">Single bed room</asp:ListItem>
                <asp:ListItem Value="Double">Double bed room</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 40px">
            Select available room:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="True">
                <asp:ListItem Value="Select"></asp:ListItem>
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
                <asp:ListItem>103</asp:ListItem>
                <asp:ListItem>104</asp:ListItem>
                <asp:ListItem>105</asp:ListItem>
                <asp:ListItem>106</asp:ListItem>
                <asp:ListItem>107</asp:ListItem>
                <asp:ListItem>108</asp:ListItem>
                <asp:ListItem>109</asp:ListItem>
                <asp:ListItem>110</asp:ListItem>
                <asp:ListItem>111</asp:ListItem>
                <asp:ListItem>112</asp:ListItem>
                <asp:ListItem>113</asp:ListItem>
                <asp:ListItem>114</asp:ListItem>
                <asp:ListItem>115</asp:ListItem>
                <asp:ListItem>116</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 40px">
            <br />
            Duration of stay :
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;Availability date:<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        &nbsp;(MM/DD/YYYY)</p>
        <p style="margin-left: 40px">
            <br />
            <br />
            Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <br />
            Date:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;(MM/DD/YYYY)<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        </p>
    
    </div>
        <asp:SqlDataSource ID="roomsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="SELECT * FROM [room]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @original_room_no AND [room_type] = @original_room_type AND [availability] = @original_availability AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL)) AND (([duration_stay] = @original_duration_stay) OR ([duration_stay] IS NULL AND @original_duration_stay IS NULL))" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @user_id, @duration_stay)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @original_room_no AND [room_type] = @original_room_type AND [availability] = @original_availability AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL)) AND (([duration_stay] = @original_duration_stay) OR ([duration_stay] IS NULL AND @original_duration_stay IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_room_no" Type="Int16" />
                <asp:Parameter Name="original_room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="original_availability" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_duration_stay" Type="String" />
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
                <asp:Parameter Name="original_room_no" Type="Int16" />
                <asp:Parameter Name="original_room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="original_availability" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_duration_stay" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [user_info] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user_info] ([first_name], [last_name]) VALUES (@first_name, @last_name)" SelectCommand="SELECT [first_name], [user_id], [last_name] FROM [user_info]" UpdateCommand="UPDATE [user_info] SET [first_name] = @first_name, [last_name] = @last_name WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

