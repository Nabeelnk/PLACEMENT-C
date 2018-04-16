<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdrivelist.aspx.cs" Inherits="viewdrivelist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:conn %>" 
            SelectCommand="SELECT tbl_company.CompanyName, StudentRegistration.FirstName, StudentRegistration.SecondName, StudentRegistration.Department FROM StudentRegistration INNER JOIN tbl_RegDrive ON StudentRegistration.SID = tbl_RegDrive.SID INNER JOIN tbl_company ON tbl_RegDrive.Cid = tbl_company.Cid">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="SecondName" HeaderText="SecondName" 
                SortExpression="SecondName" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
