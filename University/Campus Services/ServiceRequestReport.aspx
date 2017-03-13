<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequestReport.aspx.cs" Inherits="University.Campus_Services.Service_RequestReport" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="ServiceRequestForm" />
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
                        <li><a href="Service_AllotedForm.aspx">Service Allotment</a></li>
                        <li class="active"><a href="ServiceRequestReport.aspx">Service Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
         <div style="margin-top:75px;" align="center">
         <h2>
         <asp:Label ID="lblhead" ForeColor="Blue" Width="600" runat="server" Text="Service Request Report"/>
         </h2> <br />
         <br />
            </div> 
        <br />
        <br />
        </strong>From<strong> :&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>To<strong> :&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        </strong>Service Type :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Electricity</asp:ListItem>
            <asp:ListItem>Plumbing</asp:ListItem>
            <asp:ListItem>Carpentry</asp:ListItem>
            <asp:ListItem>Lawn Move</asp:ListItem>
            <asp:ListItem>House Keeping</asp:ListItem>
        </asp:DropDownList>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<strong><br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="Select * from service where service_req_date between @service_req_date1 and @service_req_date2  and service_type=@service_type;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="service_req_date1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="service_req_date2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="service_type" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="service_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="service_id" HeaderText="Service ID" InsertVisible="False" ReadOnly="True" SortExpression="service_id" />
                <asp:BoundField DataField="room_no" HeaderText="Room No" SortExpression="room_no" />
                <asp:BoundField DataField="service_type" HeaderText="Service Type" SortExpression="service_type" />
                <asp:BoundField DataField="service_req_date" HeaderText="Service Req Date" SortExpression="service_req_date" />
                <asp:BoundField DataField="service_req_time" HeaderText="Service Req Time" SortExpression="service_req_time" />
                <asp:BoundField DataField="service_alloted_date" HeaderText="service Alloted Date" SortExpression="service_alloted_date" />
                <asp:BoundField DataField="service_alloted_time" HeaderText="Service Alloted Time" SortExpression="service_alloted_time" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="Status" />
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
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
        <br />
        </strong>
    
    </div>
    </form>
</body>
</html>

