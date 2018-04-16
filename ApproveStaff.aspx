<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApproveStaff.aspx.cs" Inherits="ApproveStaff" %>

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
        DeleteCommand="delete from tbl_staff where STAFFid=@STAFFid" 
        SelectCommand="SELECT * FROM [tbl_staff] WHERE ([status] = @status)" 
        UpdateCommand="update tbl_staff set status='approved' where STAFFid=@STAFFid">
        <DeleteParameters>
            <asp:Parameter Name="STAFFid" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="pending" Name="status" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="STAFFid" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="STAFFid" DataSourceID="SqlDataSource1" 
        ondatabinding="GridView1_DataBinding" 
        onrowdatabound="GridView1_RowDataBound" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Height="466px" 
        Width="814px">
        <Columns>
            <asp:BoundField DataField="STAFFid" HeaderText="STAFFid" InsertVisible="False" 
                ReadOnly="True" SortExpression="STAFFid" />
            <asp:BoundField DataField="Usertype" HeaderText="Usertype" 
                SortExpression="Usertype" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" 
                SortExpression="Lastname" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" 
                SortExpression="Subject" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
                SortExpression="Emailid" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                SortExpression="MobileNumber" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
            <asp:TemplateField HeaderText="PHOTO">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" 
                        ImageUrl='<%# Bind("image", "{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" DeleteText="REJECT" 
                ShowDeleteButton="True" />
            <asp:CommandField ButtonType="Button" EditText="ACCEPT" ShowEditButton="True" />
        </Columns>
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
