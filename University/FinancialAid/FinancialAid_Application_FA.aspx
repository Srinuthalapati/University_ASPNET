<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinancialAid_Application_FA.aspx.cs" Inherits="University.Financial_Aid.FinancialAid_Application_FA" %>

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
    
    
       <center><h1> <asp:Label ID="Label16" runat="server" ForeColor="#0033CC" Text="Financial Aid Application Form" Font-Bold="True" Font-Underline="True"></asp:Label></h1></center>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True"  Font-Size="Medium" ForeColor="Black" Text="Check your Academic Eligibility before you apply :" Font-Italic="False"></asp:Label>
        <br />
        <br />
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get My Acedamic  Details" BackColor="Silver" ForeColor="Black" />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Major"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text="Graduation Semester"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
      &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label12" runat="server" Text="Student Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label13" runat="server" Text="GPA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" Text="Credits Completed"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label17" runat="server" Font-Bold="True"  Font-Size="Medium" ForeColor="Black" Text="Fill In Your Back Ground Information : "></asp:Label>
        <br />
        <br />
        <br />
   &nbsp;&nbsp;&nbsp;&nbsp;     <asp:Label ID="Label15" runat="server" Text="Award Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem Value="F029">F029-Federal Grant</asp:ListItem>
            <asp:ListItem Value="TX27">TX27- Texas Grant</asp:ListItem>
            <asp:ListItem Value="IS05">IS05- International Student Grant</asp:ListItem>
            <asp:ListItem Value="HS25">HS25- Hispanic Student Aid</asp:ListItem>
            <asp:ListItem Value="VA99">VA99- Veteran Grant</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
   &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Maratial Status"></asp:Label>
        &nbsp;?<br />
        &nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;  <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="364px">
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem>Seperated</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="Have you been convicted of crime or felony ?"></asp:Label>
&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="242px">
           <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <br />
     &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label5" runat="server" Text="Do you have authorization to work in the USA?"></asp:Label>
&nbsp;<asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <br />
   &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label6" runat="server" Text="Where do you plan to live ?"></asp:Label>
&nbsp;&nbsp; &nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList4" runat="server" Height="34px" RepeatDirection="Horizontal" Width="392px">
            <asp:ListItem>Campus</asp:ListItem>
            <asp:ListItem Value="O-campus">Off Campus</asp:ListItem>
            <asp:ListItem>Parents</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;&nbsp;
        &nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label7" runat="server" Text="Were your parents employed in the previous year ?"></asp:Label>
&nbsp;
        &nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <br />
  &nbsp;&nbsp;&nbsp;&nbsp;  <asp:Label ID="Label8" runat="server" Text="Total Anual Family Earnings ?"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;$
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" Text="Other Untaxed Income ? "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;$<br />
        <br />
     &nbsp;&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label10" runat="server" Text="Date :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp; yyyy-mm-dd<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" ForeColor="Black" Text="Submit Application" OnClick="Button1_Click" BorderStyle="Groove" />
        <br />
        <br />
    </form>
</body>
</html>
