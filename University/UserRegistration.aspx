<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="University.UserRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="LandingPage" />
    <meta name="author" content="Harika" />
    <title>Home | University DBMS Project</title>
</head>
<body>
    <form id="form2" runat="server">

        <br />
        
        <asp:SqlDataSource ID="SqlUser_info" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [user_info] WHERE [user_id] = @original_user_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [date_of_birth] = @original_date_of_birth AND [gender] = @original_gender AND [email_id] = @original_email_id AND [contact_no] = @original_contact_no AND [nationality] = @original_nationality AND (([ssn] = @original_ssn) OR ([ssn] IS NULL AND @original_ssn IS NULL)) AND [address_line1] = @original_address_line1 AND (([address_line2] = @original_address_line2) OR ([address_line2] IS NULL AND @original_address_line2 IS NULL)) AND [city] = @original_city AND [state_of_res] = @original_state_of_res AND [zip_code] = @original_zip_code AND [country] = @original_country" InsertCommand="INSERT INTO [user_info] ([first_name], [last_name], [date_of_birth], [gender], [email_id], [contact_no], [nationality], [ssn], [address_line1], [address_line2], [city], [state_of_res], [zip_code], [country]) VALUES (@first_name, @last_name, @date_of_birth, @gender, @email_id, @contact_no, @nationality, @ssn, @address_line1, @address_line2, @city, @state_of_res, @zip_code, @country)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user_info]" UpdateCommand="UPDATE [user_info] SET [first_name] = @first_name, [last_name] = @last_name, [date_of_birth] = @date_of_birth, [gender] = @gender, [email_id] = @email_id, [contact_no] = @contact_no, [nationality] = @nationality, [ssn] = @ssn, [address_line1] = @address_line1, [address_line2] = @address_line2, [city] = @city, [state_of_res] = @state_of_res, [zip_code] = @zip_code, [country] = @country WHERE [user_id] = @original_user_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [date_of_birth] = @original_date_of_birth AND [gender] = @original_gender AND [email_id] = @original_email_id AND [contact_no] = @original_contact_no AND [nationality] = @original_nationality AND (([ssn] = @original_ssn) OR ([ssn] IS NULL AND @original_ssn IS NULL)) AND [address_line1] = @original_address_line1 AND (([address_line2] = @original_address_line2) OR ([address_line2] IS NULL AND @original_address_line2 IS NULL)) AND [city] = @original_city AND [state_of_res] = @original_state_of_res AND [zip_code] = @original_zip_code AND [country] = @original_country" OnSelecting="SqlUser_info_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date_of_birth" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_ssn" Type="Int32" />
                <asp:Parameter Name="original_address_line1" Type="String" />
                <asp:Parameter Name="original_address_line2" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state_of_res" Type="String" />
                <asp:Parameter Name="original_zip_code" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="date_of_birth" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="ssn" Type="Int32" />
                <asp:Parameter Name="address_line1" Type="String" />
                <asp:Parameter Name="address_line2" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state_of_res" Type="String" />
                <asp:Parameter Name="zip_code" Type="String" />
                <asp:Parameter Name="country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="date_of_birth" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="ssn" Type="Int32" />
                <asp:Parameter Name="address_line1" Type="String" />
                <asp:Parameter Name="address_line2" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state_of_res" Type="String" />
                <asp:Parameter Name="zip_code" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date_of_birth" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_ssn" Type="Int32" />
                <asp:Parameter Name="original_address_line1" Type="String" />
                <asp:Parameter Name="original_address_line2" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state_of_res" Type="String" />
                <asp:Parameter Name="original_zip_code" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    <div style="margin-top:100px;" align="center">
         <h2>
         <asp:Label ID="lblHeading" ForeColor="Blue" Width="300" runat="server" Text="User Registration"></asp:Label>
         </h2> <br />
         <br />
        <asp:Label ID="msg" runat="server" Width="150"></asp:Label>
        <br />
     </div>
        <div style="margin-left: 75px">
        <asp:Panel ID="PaneladdUser" runat="server">
        <asp:Label ID="lblFirstName" runat="server" Width="150" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" Width="150" runat="server"></asp:TextBox>            
        <asp:Label ID="lblLastName" Width="81px" runat="server" Text="Last Name" style="margin-left: 55px"></asp:Label>
        <asp:TextBox ID="txtLastName" Width="150" runat="server"></asp:TextBox>
        <br /> 
            <br />
            <asp:Label ID="lblDOB" runat="server" Width="150" Text="Date of Birth"></asp:Label> &nbsp;

        <asp:TextBox ID="txtDob" ReadOnly="false" Width="150" runat="server"></asp:TextBox>&nbsp;
        <asp:ImageButton ID="calimgDOB" runat="server" height="30px" ImageUrl="~/images/calender.png" OnClick="calimgDOB_Click" Width="25px" />
        <asp:Panel ID="calpanel" runat="server" Visible="false">
          <asp:Calendar ID="calDOB" runat="server" OnSelectionChanged="calDateofBirth_SelectionChanged"></asp:Calendar>
           
          <br />
          </asp:Panel>
          <br />
            <br />
            
                    
              <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>            
             <asp:RadioButtonList ID="gender"  runat="server" >
               <asp:ListItem Selected="True"  Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F" >Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />
      <asp:Label ID="lblEmail" runat="server" Text="Email Id :"></asp:Label>                 
      <asp:TextBox ID="txtEmail" runat="server" Width="208px"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="lblContactNo" runat="server" Text="Contact No:"></asp:Label>
            <asp:TextBox ID="txtContactno" runat="server" Width="151px"></asp:TextBox>
            <br />
            <br />
         <asp:Label ID="lblNationality" runat="server" Text="Nationality "></asp:Label>
         <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="lblSSN" runat="server" Text="social security number:"></asp:Label>                 
      <asp:TextBox ID="txtSSN" runat="server" Width="208px"></asp:TextBox>
            <br />
            <br />
         <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1:"></asp:Label>
         <asp:TextBox ID="txtAddressLine1" runat="server"></asp:TextBox>
            <br />
            '<br />
        <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line2:"></asp:Label>
         <asp:TextBox ID="txtAddressLine2" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="lblcity" runat="server" Text="City :"></asp:Label>
         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="lblState" runat="server" Text="State of Residence :"></asp:Label>
         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>  
            <br />
            <br />
         <asp:Label ID="lblZipcode" runat="server" Text="Zip Code :"></asp:Label>
           <asp:TextBox ID="txtZipcode" runat="server"></asp:TextBox>
            <br />
            <br />
          <asp:Label ID="lblCountry" runat="server" Text="Country :"></asp:Label>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <br />
            <br />
             <div style="margin-top:100px;" align="center">
              <asp:Button ID="btnSaveUser" runat="server" Text="Save" OnClick="btnSaveUser_Click"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancelUser" runat="server"  OnClick="btnCancelUser_Click" Text="Clear" />
              </div>
            </asp:Panel>
            </div>
        <asp:SqlDataSource ID="Sqlgetuserid" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT * FROM [user_info]"></asp:SqlDataSource>
    </form>
</body>
</html>
