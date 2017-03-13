<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="University Application form.aspx.cs" Inherits="University.Register_Office.University_Application_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Application For University"></asp:Label>
        <br />
        (Please Fill out the Application form carefully)<br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Personal Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Full name"></asp:Label>
        <br />
        <br />
        First Name:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
&nbsp;&nbsp; Last Name:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="185px"></asp:TextBox>
        <br />
        <br />
        Date of Birth:&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        :<br />
        Email:
        <asp:TextBox ID="TextBox11" runat="server" Width="268px"></asp:TextBox>
&nbsp;<br />
        <br />
        Phone Number:
        <asp:TextBox ID="TextBox14" runat="server" Width="39px"></asp:TextBox>
&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        Address:
        <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="339px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Street adress Line1"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="334px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Street adress Line 2"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="181px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
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
        <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="Gender"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Course Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Major field of Study"></asp:Label>
        :<br />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Under-Graduate" />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Graduate" />
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Minor field of Study"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Education Background"></asp:Label>
        <br />
        (List your previous schools beginning with the most recent)<br />
        <br />
        <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox16" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox17" runat="server" Width="80px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Graduated"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Yes" />
        <br />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="No" />
        <br />
        <br />
&nbsp;<asp:Label ID="Label20" runat="server" Font-Size="Large" Text="Entry Date"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label19" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Graduation Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label22" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox20" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox21" runat="server" Width="65px"></asp:TextBox>
        <br />
        <asp:Label ID="Label26" runat="server" Font-Size="Large" Text="Entry Date"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label27" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label28" runat="server" Font-Size="Large" Text="Exit Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label29" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
    
    </div>
    <div>
    
        <br />
        <asp:Label ID="Label30" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox24" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label31" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox25" runat="server" Width="64px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="Label33" runat="server" Font-Size="Large" Text="Entry Date"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label34" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label35" runat="server" Font-Size="Large" Text="Exit Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label36" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label37" runat="server" Font-Size="X-Large" Text="GRE Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label38" runat="server" Font-Size="Large" Text="GRE Score Combined"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox28" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label39" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label40" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label41" runat="server" Font-Size="X-Large" Text="Activity Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label42" runat="server" Font-Size="Large" Text="Brief  Description of activity no.1 and  your role"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox30" runat="server" Height="105px" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label43" runat="server" Font-Size="Large" Text="Brief  Description of activity no.2 and  your role"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox31" runat="server" Height="105px" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label44" runat="server" Font-Size="Large" Text="Brief  Description of activity no.3 and  your role"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox32" runat="server" Height="105px" Width="354px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="48px" Text="Submit" Width="157px" />
        <br />
    
    </div>
    </form>
</body>
</html>

