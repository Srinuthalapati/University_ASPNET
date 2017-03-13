<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scholarship_Info_FA.aspx.cs" Inherits="University.Financial_Aid.Scholarship_Info_FA" %>

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
                        <li><a href="Applications_FA.aspx">Applications</a></li>
                        <li class="active"><a href="Scholarship_Info_FA.aspx">Scholarships</a></li>                        
                        <li><a href="Student_Application_Status.aspx">Student Application Status</a></li> 
                        <li><a href="Employee_GridScreen_FA.aspx">Employee</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div>
       <center><h2> <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Detailed Information"></asp:Label></h2> </center>
        
        <p> <b>1) Fedral Grant:</b>  'This award is sponsored by US Department of Education to encourage aspiring students students'</p>
        <p> <b>2) Texas State Grant:</b> 'This award is sponsored by Texas State to encourage asiring students' <br />
            In order to qualify as an Initial Texas Grant an Entering Freshmen  must  enroll at an eligible institution  within 16 months of High School graduation and:<br />
                 -	Be a Texas resident<br />
                 -	Not have been convicted of a felony or crime involving a controlled substance<br />
                 -	Demonstrate financial need<br />
                 -	Have an EFC less than or equal to 5088<br />
                 -	Have Selective Service registration or exemption from this requirement<br />

        </p>
        <p> <b>3)International Student Aid:</b> 'This award is sponsored by  to encourage International Students to study in America'<br />
                 -	The student should have a G.P.A of 3.0 and above<br />
                 -	Should be enrolled for a minimum of 9 credit hours<br />

        </p>
        <p> <b>4)Hespanic Student Aid:</b>' This award is sponsored by Donald Trump to encourage International Students to study in America'<br />
                -	Must be of Hispanic Heritage<br />
                -	Minimum of 3.0 GPA on a 4.0 scale (or equivalent) for High School Students<br />
                -	Minimum of 2.5 GPA on a 4.0 scale (or equivalent) for College and Graduate Students<br />
                -	Plan to enroll Full-Time in an accredited, not-for-profit, 4-year university or graduate school during Fall of a scholarship cycle (year)<br />
                -	U.S. Citizen, Permanent Legal Resident, DACA or Eligible Non-Citizen (as defined by FAFSA)<br />
                -	Complete FAFSA or state based financial aid application (if applicable)<br />

        </p>
        <p> <b>5)Veteran Aid:</b> ' This award is sponsored by the US Military Forces for students who are eligble' <br /> 
                - Minimum of 3.0 GPA on a 4.0 scale (or equivalent) for High School Students<br />
                - Minimum of 2.5 GPA on a 4.0 scale (or equivalent) for College and Graduate Students<br />
                - US veteran backgorund<br />
        </p>
        <p> <h3> At a Glance</h3>

        <table border="2" cellpadding="4" cellspacing="4">
            <th> Name</th>
            <th> % of Tution Amount</th>
            <th> Start Date </th>
            <th> DeadLine </th>
            <tr>
                <td>Federal Grant (F029)</td>
                <td>75%</td>
                <td> '01/01/2017' </td>
                <td> '03/01/2017' </td>
            </tr>
            <tr>
                <td>Texas Grant (F029)</td>
                <td>75%</td>
                <td> '02/23/2017' </td>
                <td> '04/21/2017' </td>
            </tr>
            <tr>
                <td>International Student Aid (F029)</td>
                <td>50%</td>
                <td> '05/13/2017' </td>
                <td> '06/17/2017' </td>
            </tr>
            <tr>
                <td>Hespanic Student Aid (F029)</td>
                <td>75%</td>
                <td> '06/23/2017' </td>
                <td> '07/18/2017' </td>
            </tr>
            <tr>
                <td>Veteran Grant (F029)</td>
                <td>90%</td>
                <td> '08/25/2017' </td>
                <td> '09/28/2017' </td>
            </tr>
        </table>

        </p>
   
    </div>
    </form>
</body>
</html>
