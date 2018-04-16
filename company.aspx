<%@ Page Language="C#" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="company" %>

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
          <li><a href="View.aspx" class="m3">View</a></li>
          <li class="current"><a href="tpoviewdrive.aspx" class="m4">Drive</a></li>
          <li><a href="industrial visit.aspx" class="m4">IV</a></li>
          <li ><a href="TpoProfile.aspx" class="m5">Profile</a></li>
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
        <li><span><a href="index.html">Home</a></span></li>
        <li><span><a href="Events.aspx">Events</a></span></li>
        <li><span><a href="View.aspx">View</a></span></li>
        <li><span><a href="tpoviewdrive.aspx">Drive</a></span></li>
        <li><span><a href="industrial visit.aspx">IV</a></span></li>
        
        <li class="last"><span><a href="TpoProfile.aspx">Profile</a></span></li>
      </ul>
    </aside>
    <section id="content">
     <form id="form1" runat="server" style="overflow: scroll">
    <div>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                COMPANY NAME
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                DESIGNATION</td>
            <td class="style5">
                <asp:DropDownList ID="desi" runat="server">
                    <asp:ListItem Selected="True">System Engineer</asp:ListItem>
                    <asp:ListItem>System administrator</asp:ListItem>
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>Tester</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                SALARY</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                DATE</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                VENUE</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                TIME</td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                COMPANY&nbsp; DESCRIPTION</td>
            <td class="style5">
                <asp:TextBox ID="TextBox6" runat="server" Height="81px" Width="617px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3">
                QUALIFICATION</td>
            <td class="style5">
                <asp:DropDownList ID="quali" runat="server">
                    <asp:ListItem Selected="True">MCA</asp:ListItem>
                    <asp:ListItem>BTECH</asp:ListItem>
                    <asp:ListItem>MTECH</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                CUTOFF</td>
            <td class="style5">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                %</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                VACANCY</td>
            <td class="style5">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                WEBSITE</td>
            <td class="style5">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                CONTACT</td>
            <td class="style5">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT * FROM [tbl_company]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Cid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                ReadOnly="True" SortExpression="Cid" Visible="False" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                SortExpression="CompanyName" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="JobDescription" HeaderText="JobDescription" 
                SortExpression="JobDescription" />
            <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                SortExpression="Qualification" />
            <asp:BoundField DataField="cutoff" HeaderText="cutoff" 
                SortExpression="cutoff" />
            <asp:BoundField DataField="vacancy" HeaderText="vacancy" 
                SortExpression="vacancy" />
            <asp:BoundField DataField="website" HeaderText="website" 
                SortExpression="website" />
            <asp:BoundField DataField="contact" HeaderText="contact" 
                SortExpression="contact" />
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