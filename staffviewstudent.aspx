<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffviewstudent.aspx.cs" Inherits="staffviewstudent" %>

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
           <li ><a href="staffindex.html" class="m1">Home</a></li>
          <li><a href="staffviewdrive.aspx" class="m2">View Drive</a></li>
          <li class="current"><a href="staffviewstudent.aspx" class="m3">Student</a></li>
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
    <section id="content"><form id="form1" runat="server">
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td class="style2">
                    DEPARTMENT WISE</td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/staffdepartmentwise.aspx">CLICK HERE</asp:HyperLink>
                    <br />
                </td>
                <td class="style3">
                </td>
            </tr>
            <br /><br />
            <tr>
                <td class="style2">
                    SEM WISE</td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/staffsemwise.aspx">CLICK HERE</asp:HyperLink>
                    <br />
                </td>
                <td class="style3">
                </td>
            </tr>
            <br /><br />
            <tr>
                <td class="style2">
                    ARREAR WISE</td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/staffarrearwise.aspx">CLICK HERE</asp:HyperLink>
                    <br />
                </td>
                <td class="style3">
                </td>
            </tr>
            <br /><br />
            <tr>
                <td class="style2">
                    PERCENTAGE WISE</td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink4" runat="server" 
                        NavigateUrl="~/staffpercentagewise.aspx">CLICK HERE</asp:HyperLink>
                </td>
                <td class="style3">
                </td>
            </tr>
        </table>
    
    </div>
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
