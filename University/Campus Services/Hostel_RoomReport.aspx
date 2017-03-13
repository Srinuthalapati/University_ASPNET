<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_RoomReport.aspx.cs" Inherits="University.Campus_Services.Hostel_RoomReport" %>
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
                        <li class="active"><a href="Hostel_RoomReport.aspx">Room Report</a></li> 
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
    <div>
    <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Hostel Room Report"/>
         </h2> <br />
         <br />
            </div> 
    
        <br />
        <span class="auto-style1">From:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="130px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="132px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Room Number:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>select value</asp:ListItem>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
        <br />
&nbsp;</span></div>
        <asp:SqlDataSource ID="SqlTenant" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [tenent] WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no" InsertCommand="INSERT INTO [tenent] ([tuser_id], [allocation_room_no]) VALUES (@tuser_id, @allocation_room_no)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tenent]" UpdateCommand="UPDATE [tenent] SET [allocation_room_no] = @allocation_room_no WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no">
            <DeleteParameters>
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tuser_id" Type="Int32" />
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="Select * from room where availability between @availability1  and @availability2  and room_no=@room_no;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="availability1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="availability2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="room_no" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="room_no" DataSourceID="roomSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" SortExpression="user_id" />
                <asp:BoundField DataField="room_no" HeaderText="Room No" ReadOnly="True" SortExpression="room_no" />
                <asp:BoundField DataField="room_type" HeaderText="Room Type" SortExpression="room_type" />
                <asp:BoundField DataField="availability" HeaderText="Availability" SortExpression="availability" />
                <asp:BoundField DataField="duration_stay" HeaderText="Duration of Stay" SortExpression="duration_stay" />
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

