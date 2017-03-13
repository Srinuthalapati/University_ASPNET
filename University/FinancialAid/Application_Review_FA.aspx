<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application_Review_FA.aspx.cs" Inherits="University.Financial_Aid.Application_Review_FA" %>

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
                        <li ><a href="Applications_FA.aspx">Applications</a></li>
                        <li><a href="Scholarship_Info_FA.aspx">Scholarships</a></li>                        
                        <li><a href="Student_Application_Status.aspx">Student Application Status</a></li> 
                        <li class="active"><a href="Employee_GridScreen_FA.aspx">Employee</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    
    
        <br />
    <asp:Label ID="Label19" Fontsize="Large" runat="server" Text="Student Application Details" ForeColor="Blue"></asp:Label>
        <br />
        
        ------------------------------------------------------------------------------------------------------------------------------------------

    
        <p>
          &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label1" runat="server" Text="Application ID :  "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
           &nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Student ID :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Student Full Name :"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Major :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Graduation Semester :"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Text="Student Year :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="GPA :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
      &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label8" runat="server" Text="Credits Completed :"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Maritial Status :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
     &nbsp;&nbsp;&nbsp;   <asp:Label ID="Label10" runat="server" Text="Any Crime History :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;    <asp:Label ID="Label11" runat="server" Text="Work Permit in USA :"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        <br />
   &nbsp;&nbsp;&nbsp;     <asp:Label ID="Label12" runat="server" Text="Residence : "></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;    <asp:Label ID="Label13" runat="server" Text="Parents Employed in the Previous Year :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;    <asp:Label ID="Label14" runat="server" Text="Family Annual Income :"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;    <asp:Label ID="Label15" runat="server" Text="UnTaxed Income :"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label16" runat="server" Text="Date Applied :"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />
        <br />
        -------------------------------------------------------------------------------------------------------------------------------------------<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Application Review Decision
        <br />
        -------------------------------------------------------------------------------------------------------------------------------------------<br />
        <p>
          &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label17" runat="server" Text="Employee ID :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        </p>
        <p>
           &nbsp;&nbsp;&nbsp; <asp:Label ID="Label18" runat="server" Text="Valid Till : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Approve" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reject" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
