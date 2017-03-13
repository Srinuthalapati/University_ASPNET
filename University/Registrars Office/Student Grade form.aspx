<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Grade form.aspx.cs" Inherits="University.Registrars_Office.Student_Grade_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Student Grade Report"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Section ID"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="37px" Width="133px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="Student ID"></asp:Label>
        :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="181px" Width="137px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="Grade"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" Height="18px" Width="137px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="48px" Text="Submit" Width="157px" />
    
    </div>
    </form>
</body>
</html>
