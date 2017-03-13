<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_FA.aspx.cs" Inherits="University.Financial_Aid.Employee_FA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <h3></h3>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT award_name AS Name FROM dbo.financial_aid"></asp:SqlDataSource>
        
        
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>

        </asp:GridView>
        
    </form>
</body>
</html>
