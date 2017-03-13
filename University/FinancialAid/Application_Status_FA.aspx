<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application_Status_FA.aspx.cs" Inherits="University.FinancialAid.Application_Status_FA" %>

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
                        <li><a href="Scholarship_Info_FA.aspx">Scholarships</a></li>                        
                        <li class="active"><a href="Student_Application_Status.aspx">Student Application Status</a></li> 
                        <li ><a href="Employee_GridScreen_FA.aspx">Employee</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div>
    
        
       

        <center><h1><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333FF" Text="Department Of Financial Aid"></asp:Label></h1></center>
        <br />
        <br />
        <br />
       <p> --> Keep Checking for your updated application status
        <br />
         --> Generally Finanacial Aid department takes 6 to 8 weeks to process your applocation
        </p>
        <p> --&gt; If you don&#39;t Deny your Awarded Financial Aid before 5 days to the semester start date, it will be considered as Accepted .<br />
           <br />
            <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="#CC3300" Text="--&gt; Click the &quot;Select&quot; button to Deny your respective Financial Aid. "></asp:Label>
        </p>
        <p> 
           <br />
        --> Below Is Your Current Application Status
        </p>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fapplication_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="fapplication_id" HeaderText="Application ID" InsertVisible="False" ReadOnly="True" SortExpression="fapplication_id" />
                <asp:BoundField DataField="suser_id" HeaderText="Student ID" SortExpression="suser_id" />
                <asp:BoundField DataField="validity_date" HeaderText="Valid Till" SortExpression="validity_date" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="faward_code" HeaderText="Award Code" SortExpression="faward_code" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [fapplication_id], [suser_id], [validity_date], [status], [faward_code] FROM [financial_aid_application]"></asp:SqlDataSource>
   <br />
   <br />
   <br /> </form>

    </form>

    </form>
</body>
</html>
