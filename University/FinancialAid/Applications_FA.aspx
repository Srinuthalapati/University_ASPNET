<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Applications_FA.aspx.cs" Inherits="University.Financial_Aid.Applications_FA" %>

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
                        <li ><a href="homeFA.aspx">Financial Aid Home</a></li>
                        <li class="active"><a href="Applications_FA.aspx">Applications</a></li>
                        <li><a href="Scholarship_Info_FA.aspx">Scholarships</a></li>                        
                        <li><a href="Student_Application_Status.aspx">Student Application Status</a></li> 
                        <li><a href="Employee_GridScreen_FA.aspx">Employee</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div>
      <center>  <h1><asp:Label ID="Label1" runat="server" Text="Apply for Financial Aid" ForeColor="Blue"></asp:Label> </h1>
          <br />
          <br />
        <table border="2" cellpadding="4" cellspacing="4">
            <th> Name</th>
            <th> % of Tution Amount</th>
            <th> Start Date </th>
            <th> DeadLine </th>
            <th> Criteria</th>
            <th> Application</th>
            <tr>
                <td>Federal Grant (F029)</td>
                <td>75%</td>
                <td> '01/01/2017' </td>
                <td> '03/01/2017' </td>
                <td><a href="Scholarship_Info_FA.aspx"> Check Eligibilty</a></td>
                <td><a href="FinancialAid_Application_FA.aspx">Apply Now</a></td>
            </tr>
            <tr>
                <td>Texas Grant (F029)</td>
                <td>75%</td>
                <td> '02/23/2017' </td>
                <td> '04/21/2017' </td>
                <td><a href="Scholarship_Info_FA.aspx"> Check Eligibilty</a></td>
                <td><a href="FinancialAid_Application_FA.aspx">Apply Now</a></td>
            </tr>
            <tr>
                <td>International Student Aid (F029)</td>
                <td>50%</td>
                <td> '05/13/2017' </td>
                <td> '06/17/2017' </td>
                <td><a href="Scholarship_Info_FA.aspx"> Check Eligibilty</a></td>
                <td><a href="FinancialAid_Application_FA.aspx">Apply Now</a></td>
            </tr>
            <tr>
                <td>Hispanic Student Aid (F029)</td>
                <td>75%</td>
                <td> '06/23/2017' </td>
                <td> '07/18/2017' </td>
                <td><a href="Scholarship_Info_FA.aspx"> Check Eligibilty</a></td>
                <td><a href="FinancialAid_Application_FA.aspx">Apply Now</a></td>
            </tr>
            <tr>
                <td>Veteran Grant (F029)</td>
                <td>90%</td>
                <td> '08/25/2017' </td>
                <td> '09/28/2017' </td>
                <td><a href="Scholarship_Info_FA.aspx"> Check Eligibilty</a></td>
                <td><a href="FinancialAid_Application_FA.aspx">Apply Now</a></td>
            </tr>
        </table> </center>
    
    </div>
    </form>
</body>
</html>
