<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffsemwise.aspx.cs" Inherits="staffsemwise" %>

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
         <li class="current"><a href="staffindex.html" class="m1">Home</a></li>
          <li><a href="staffviewdrive.aspx" class="m2">View Drive</a></li>
          <li><a href="staffviewstudent.aspx" class="m3">Student</a></li>
          <li><a href="staffviewiv.aspx" class="m4">IV</a></li>
          <li ><a href="staffprofile.aspx" class="m5">Profile</a></li>
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
         <li><span><a href="staffindex.html">Home</a></span></li>
        <li><span><a href="staffviewdrive.aspx">View Drive</a></span></li>
        <li><span><a href="staffviewstudent.aspx">Student</a></span></li>
        <li><span><a href="staffviewiv.aspx">IV</a></span></li>
        <li class="last"><span><a href="staffprofile.aspx">Profile</a></span></li>
       
      </ul>
    </aside>
    <section id="content"> 
     <form id="form1" runat="server">
    <div>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                SELECT SEM</td>
            <td>
                <asp:DropDownList ID="sem" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="sem_SelectedIndexChanged">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [StudentRegistration] WHERE ([Sem] = @Sem)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Sem" SessionField="sem" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" 
                ReadOnly="True" SortExpression="SID" Visible="False" />
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

