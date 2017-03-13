<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRDefault.aspx.cs" Inherits="University.HR.HRDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="HR Landing Page" />
    <meta name="author" content="Harika" />
    <title>HR Home</title>
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
                        <li class="active"><a href="HRDefault.aspx">HR - Home</a></li>
                        <li><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplicationStatus.aspx">Job Application Status</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <div style="margin-top:75px;" align="center">
            <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="500" runat="server" Text="HR FLow Chart"></asp:Label>
         </h2> <br />
         <br />
        </div>

        <div style="margin-top:50px; height: 475px; text-overflow:inherit; overflow:auto"  align="center">




             <asp:Button ID="btnPosition" runat="server" Text="Position" Height="50" Width="200" OnClick="btnPosition_Click" /> <br />
             <asp:ImageButton ID="arrowdown1" runat="server" height="30px" ImageUrl="~/images/arrow-down.jpg"  Width="25px" />
             <br /> 
             <asp:Button ID="btnJobNotification" runat="server"  Text="Job Notification" Height="50" Width="200" OnClick="btnJobNotification_Click" />

             <br /> <asp:ImageButton ID="arrowdown2" runat="server" height="30px" ImageUrl="~/images/arrow-down.jpg"  Width="25px" />
            <br />
             <asp:Button ID="btnJobSearch" runat="server"  Text="Job Search" Height="50" Width="200" OnClick="btnJobSearch_Click" />

              <br /><asp:ImageButton ID="arrowdown3" runat="server" height="30px" ImageUrl="~/images/arrow-down.jpg"  Width="25px" />
             <br />


             <asp:Button ID="btnJobstatus" runat="server"  Text="Job Applications" Height="50" Width="200" OnClick="btnJobstatus_Click" />

             <br /><asp:ImageButton ID="arrowdown4" runat="server" height="30px" ImageUrl="~/images/arrow-down.jpg"  Width="25px" />
             <br />


             <asp:Button ID="btnEmployeeJoining" runat="server"  Text="Employee Joining" Height="50" Width="200" OnClick="btnEmployeeJoining_Click" />
            
              <br /><asp:ImageButton ID="arrowdown5" runat="server" height="30px" ImageUrl="~/images/arrow-down.jpg"  Width="25px" />
             <br />



             <asp:Button ID="btnEmployee" runat="server"  Text="Employee Portal" Height="50" Width="200" OnClick="btnEmployee_Click" />




             <br /> <br /> <br />

    
    </div>
    </form>
</body>
</html>
