<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trainingstudentlist.aspx.cs" Inherits="trainingstudentlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [trainID], [ResoPerson], [Venue], [Date], [Time], [Department] FROM [tbl_training]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="trainID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="trainID" HeaderText="trainID" InsertVisible="False" 
                ReadOnly="True" SortExpression="trainID" />
            <asp:BoundField DataField="ResoPerson" HeaderText="ResoPerson" 
                SortExpression="ResoPerson" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:CommandField SelectText="LIST OF STUDENTS" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    </form>
   
</body>
</html>
