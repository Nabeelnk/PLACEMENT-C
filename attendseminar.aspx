<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendseminar.aspx.cs" Inherits="attendseminar" %>

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
          <li ><a href="studentindex.html" class="m1">Home</a></li>
          <li><a href="viewdrive.aspx" class="m2">View Drive</a></li>
          <li><a href="attendtraining.aspx" class="m3">Training</a></li>
          <li><a href="attendworkshop.aspx" class="m4">Workshop</a></li>
          <li class="current"><a href="attendseminar.aspx" class="m4">Seminar</a></li>
          <li ><a href="studentprofile.aspx" class="m5">Profile</a></li>
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
        <li><span><a href="studentindex.html">Home</a></span></li>
        <li><span><a href="viewdrive.aspx">View Drive</a></span></li>
        <li><span><a href="attendtraining.aspx">Training</a></span></li>
        <li><span><a href="attendworkshop.aspx">Workshop</a></span></li>
        <li><span><a href="attendseminar.aspx">Seminar</a></span></li>
        <li class="last"><span><a href="studentprofile.aspx">Profile</a></span></li>
      </ul>
    </aside>
    <section id="content">
       <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:conn %>" 
            SelectCommand="SELECT * FROM [tbl_seminar]"></asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="seminarID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="seminarID" HeaderText="seminarID" 
                InsertVisible="False" ReadOnly="True" SortExpression="seminarID" 
                Visible="False" />
            <asp:BoundField DataField="topic" HeaderText="topic" SortExpression="topic" />
            <asp:BoundField DataField="venue" HeaderText="venue" SortExpression="venue" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="location" HeaderText="location" 
                SortExpression="location" />
            <asp:BoundField DataField="resoperson" HeaderText="resoperson" 
                SortExpression="resoperson" />
            <asp:CommandField SelectText="ATTEND" ShowSelectButton="True" />
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