<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course Application form.aspx.cs" Inherits="University.Registrars_Office.Course_Application_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Text="Course Apllication/Drop Form:"></asp:Label>
        <br />
        <br />
        First Name:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
&nbsp;&nbsp; Last Name:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="185px"></asp:TextBox>
        <br />
        <br />
        Date of Birth:&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
        Gender:&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Address:
        <asp:TextBox ID="TextBox19" runat="server" Width="334px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Street address Line 1"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="334px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Street address Line 2"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="181px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Width="194px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label5" runat="server" Text="State/Province"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Postal/Zipcode"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 59px" Width="192px"></asp:TextBox>
&nbsp; County
        <br />
        <br />
        Student EStudent Email:
        <asp:TextBox ID="TextBox11" runat="server" Width="268px"></asp:TextBox>
&nbsp; Mobile Number:&nbsp;
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        <br />
        Phone Number:
        <asp:TextBox ID="TextBox14" runat="server" Width="39px"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
        Register/Drop:&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Semester:<br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Spring" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Maymester" />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Summer" />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Long Summer" />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Fall" />
        <br />
        <br />
        Year:&nbsp;
        <asp:TextBox ID="TextBox17" runat="server" Width="398px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Courses:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem>MIS</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Psychology</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
        AdditionaAdditional Comments:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox18" runat="server" Height="119px" Width="320px"></asp:TextBox>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="40px" Text="Clear Fields" Width="183px" />
        <br />
    
    </div>
    </form>
</body>
</html>
