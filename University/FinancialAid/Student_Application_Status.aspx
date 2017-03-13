<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Application_Status.aspx.cs" Inherits="University.FinancialAid.Student_Application_Status" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="LandingPage" />
    <meta name="author" content="Amulya" />
    <title>Home | University DBMS Project</title>
    <%-- ------ CSS ------ --%>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link href="../css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />
</head>
<body>
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
                        <li ><a href="homeFA.aspx">Financial Aid Home</a></li>
                        <li><a href="Applications_FA.aspx">Applications</a></li>
                        <li><a href="Scholarship_Info_FA.aspx">Scholarships</a></li>                        
                        <li class="active"><a href="Student_Application_Status.aspx">Student Application Status</a></li> 
                        <li><a href="Employee_GridScreen_FA.aspx">Employee</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <form id="form1" runat="server">
    <div>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <center><h1><asp:Label ID="Label2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Dashed" Font-Bold="True"   ForeColor="Blue" Text="WELCOME"></asp:Label></h1></center>
        <br />
        <br />
        <br />
        
     <center><asp:Label ID="Label4" runat="server" BackColor="White" Font-Bold="True" Font-Italic="False"  Font-Underline="True" ForeColor="Black" Text="Check Your Financial Aid Status :"></asp:Label></center>
        <br />
        <br />
     <center><asp:Label ID="Label1" runat="server" Text="Enter Your Student ID:" BackColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label></center>
<br />
<br />
     <center><asp:TextBox ID="TextBox1" runat="server" Width="162px"></asp:TextBox></center>
        
        <br />
        <br />
        
        
        <center><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get My Application Status" BackColor="#999999" ForeColor="Black" Height="43px" Width="245px" /></center>
        <br />
        <br />
        <br />

      <center><asp:Label ID="Label3" runat="server" BackColor="White" Font-Size="Large" ForeColor="#CC0000" Text="All The Best !!!"></asp:Label></center>
    </form>
</body>
</html>
