<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApproveStudnet.aspx.cs" Inherits="ApproveStudnet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
<title>PLACEMENT CELL</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 7]>
<link rel="stylesheet" href="css/ie6.css" type="text/css" media="screen">
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, footer, header nav ul li a, .nav-bg, .list li img');</script>
<![endif]-->
<!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
    <style type="text/css">
        .style1
        {
            margin: 0;
            text-align: justify;
        }
    </style>
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="wrap">
  <header>
    <div class="container">
      <h1><a href="#">Placement Cell</a></h1>
      <nav>
        <ul>
          <li ><a href="index.html" class="m1">Home</a></li>
          <li><a href="Events.aspx" class="m2">Events</a></li>
          <li class="current"><a href="View.aspx" class="m3">View</a></li>
          <li ><a href="tpoviewdrive.aspx" class="m4">Drive</a></li>
          <li><a href="industrial visit.aspx" class="m4">IV</a></li>
          <li  ><a href="TpoProfile.aspx" class="m5">Profile</a></li>
           <li class="last"><a href="logout.aspx" class="m5">Logout</a></li>
        </ul>
      </nav>
      <form action="#" id="search-form">
        <fieldset>
        </fieldset>
      </form>
    </div>
  </header>
  <div class="container">
    <aside>
      <h3>Categories</h3>
      <ul class="categories">
          <li><span><a href="ApproveStudnet.aspx"> Approve Student</a></span></li>
          <li><span><a href="ApproveStaff.aspx">Apporve staff</a></span></li>
           <li><span><a href="ViewStudent.aspx">Student</a></span></li>
        <li class="last"><span><a href="StaffDetails.aspx">Staff</a></span></li>
      </ul>
    </aside>
    <section id="content"><br />
      <form id="form1" runat="server" style="overflow: scroll">
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM StudentRegistration WHERE (SID = @SID)" 
        SelectCommand="SELECT SID, Usertype, FirstName, SecondName, RegNum, Gender, Address, Email, MobileNumber, Department, Sem, Percentage, supplimentory, Userid, Password, image, status FROM StudentRegistration" 
        
        UpdateCommand="UPDATE StudentRegistration SET status='approved' WHERE SID=@SID">
        <DeleteParameters>
            <asp:Parameter Name="SID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="SID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SID" DataSourceID="SqlDataSource1" 
        onrowdatabound="GridView1_RowDataBound" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Height="16px" 
        style="margin-right: 0px" Width="16px">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" 
                ReadOnly="True" SortExpression="SID" />
            <asp:BoundField DataField="Usertype" HeaderText="Usertype" 
                SortExpression="Usertype" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="SecondName" HeaderText="SecondName" 
                SortExpression="SecondName" />
            <asp:BoundField DataField="RegNum" HeaderText="RegNum" 
                SortExpression="RegNum" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                SortExpression="MobileNumber" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
            <asp:BoundField DataField="Percentage" HeaderText="Percentage" 
                SortExpression="Percentage" />
            <asp:BoundField DataField="supplimentory" HeaderText="supplimentory" 
                SortExpression="supplimentory" />
            <asp:BoundField DataField="Userid" HeaderText="Userid" 
                SortExpression="Userid" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:TemplateField HeaderText="PHOTO">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" EditText="ACCEPT" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" DeleteText="REJECT" 
                ShowDeleteButton="True" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Image ID="Image1" runat="server" Height="100px" />
        </EmptyDataTemplate>
    </asp:GridView>
    </form>
    </section>
  </div>
</div>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2018 <a href="#">Placement Cell</a> - All Rights Reserved</p>
    <p class="rf">Design by Nabeel N K</p>
    <div style="clear:both;"></div>
  </div>
</footer>
<script type="text/javascript">    Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>
</html>
